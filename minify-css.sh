#!/bin/bash

# Minify CSS files using clean-css-cli with the following parameters:

# -b: Enables batch mode to process multiple files at once. 
#     This is useful for glob patterns like css/**/*.css.
# css/**/*.css: The input files to be minified. 
#     This glob pattern matches all CSS files in the css directory and its subdirectories.
# --batch-suffix '': Removes the default '.min' suffix from the output file names.
#     The minified files will overwrite the original files unless an output directory is specified.

cleancss -b css/**/*.css --batch-suffix ''

# Explanation of behavior:
# - This command will recursively minify all CSS files in the `css/` directory.
# - The `--batch-suffix ''` ensures the output files replace the original ones without adding a '.min' suffix.
# - If you want to save the minified files in a separate directory, you can use the `-o` flag (e.g., `-o dist/`).

# Note:
# Be cautious when using '--batch-suffix ''' as it overwrites the original files.
# Consider using a different suffix or specifying an output directory for safer operation.
