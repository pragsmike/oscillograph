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
`rstrip.wav`.

An earlier attempt to do this is in the directory [first](first).

# Doing better

The estimate can certainly be improved.  The algorithm used doesn't 
try very hard to model or correct for the distortion process.
Here are some things to consider:

## Oscillograph

According to the article, the oscillograph used a beam of light deflected
by the signal to expose a photographic emulsion.  That implies that
the exposure is probably most intense at the peaks of the deflection
because the beam spent more time there.
We might use the graylevel to estimates of the velocity of the beam.

The beam profile looks roughly Gaussian in some of the samples, 
so that knowledge might help to recover individual components
in the smeared parts. 

The article did state that the particular oscillograph used to produce
the trace couldn't respond to signals above about 2000 Hz.

## Printing

The magazine probably used some sort of halftone process to reproduce
the picture, which allows more gray levels to be resolved at the
expense of lesser spatial resolution.  This would have the effect
of smearing the waveform image, perhaps even nonuniformly.

## Scanning

The scanner also would have introduced a pixel grid.  It was probably
much finer than the halftone mask, so its aliasing is probably
comparatively negligible.


# Extracting the trace images

The trace appeared in the original article in two "strips".  I clipped
them from the page images and concatenated the strips to give one image,
and then cropped away the parts that weren't the waveform.

The strips have different statistics (distributions of pixel intensities),
but I found that equalizing them didn't make much difference because
the algorithm I used dependend on local maxima and wasn't sensitive
to global variation.

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

Furthermore, there's certainly aliasing of any frequencies above 1200 Hz.
The article says that the oscillograph could resolve frequencies up to about
2000 Hz, and that the utterance is just under one second. The cropped waveform
image is about 2250 pixels wide, and each column is a sample. Our sampling rate
is therefore likely about 2500 Hz. That's not much more than the highest
frequency in the signal, and far below the 4000 Hz that we'd need to avoid
aliasing.

For now, we'll see how good it sounds if we just take the maximum
intensity value.

Our task then is to extract that scalar value for each time instant.  
We can do that more easily if we have each vertical slice of the strip
available as an array.  We turn the raw strip images into one vertical
strip, as a 2D array of scalar brightness values.  As a vertical strip,
each row represents an instant in time, and the row happens to be the
"vertical slice" values we wanted.

