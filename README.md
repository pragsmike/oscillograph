# Audio from noisy undersampled oscillograph

There's a
[Nov 1923 Popular Science](https://books.google.com/books?id=WioDAAAAMBAJ&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false)
article on telephony, The Great American Voice by R. W. King, editor
Bell System Technical Journal.  The article includes a reproduction of
an oscillograph trace, originally 3 feet long, rendered as two strips
each as wide as a page.

The trace has been smeared by the printing+scanning process.
The Mathematica notebook given here estimates the original
trace from the distorted image and converts it to the sound file
`america.wav`.

# Doing better

The estimate can certainly be improved.  The algorithm used doesn't 
try very hard to model or correct for the distortion process.
Here are some things to consider:

## Oscillograph

According to the article, the oscillograph used a beam of light deflected
by the signal to expose a photographic emulsion.  That implies that
the exposure is probably most intense at the peaks of the deflection
because the beam spent more time there.

The article did state that the particular oscillograph used to produce
the trace couldn't respond to signals above about 2000 Hz.

## Printing

The magazine probably used some sort of halftone mask to reproduce
the picture.  This would have aliased the higher (spatial) frequency
components of the image.

## Scanning

The scanner also would have introduced a pixel grid.  It was probably
much finer than the halftone mask, so it's aliasing is probably
comparatively negligible.


# Extracting the trace images

The trace appeared in the original article in two "strips".  I cut them
out of the rendered page using a screenshot utility.  The result is two
PNG files, which are unfortunately not the same height, even though they
represent the same range of amplitudes.

# Extracting the signal

Our strategy will take advantage of the fact that the oscillograph trace
is truly a single-valued function, because the beam scans left to right
and never "doubles back" to the left.  That means that for each instant
of time, the trace has exactly one scalar value.

Also, note that the oscillograph used a beam of light to expose
photographic material, so it's likely that the peaks are
more intense than the rest of the trace, because the beam
was moving slower at the peaks.

However, we're not working with the original oscillograph.  We have an
imperfect rendering of it that has been printed (through a halftone
screen?) and then scanned (by Google).  Therefore, we may find that each
row doesn't have a single peak, because the signal from successive
instants may have been smeared.

For now, we'll see how good it sounds if we just take the maximum
intensity value.

Our task then is to extract that scalar value for each time instant.  
We can do that more easily if we have each vertical slice of the strip
available as an array.  We turn the raw strip images into one vertical
strip, as a 2D array of scalar brightness values.  As a vertical strip,
each row represents an instant in time, and the row happens to be the
"vertical slice" values we wanted.

