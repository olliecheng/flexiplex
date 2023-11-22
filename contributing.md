# Contributing to Flexiplex

First off, thanks for taking the time to contribute! 

All types of contributions are encouraged and valued. See the [Table of Contents](#table-of-contents) for different ways to help and details about how this project handles them. Please make sure to read the relevant section before making your contribution. Thank you!

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [I Have a Question](#i-have-a-question)
- [I Want To Contribute](#i-want-to-contribute)
- [Reporting Bugs](#reporting-bugs)
- [Suggesting Enhancements](#suggesting-enhancements)
- [Your First Code Contribution](#your-first-code-contribution)
- [Improving The Documentation](#improving-the-documentation)


## Code of Conduct

This project and everyone participating in it is governed by the
[Flexiplex Code of Conduct](https://github.com/DavidsonGroup/flexiplex/main/code-of-conduct.md).
By participating, you are expected to uphold this code. Please report unacceptable behavior
to <>.


## I Have a Question

> If you want to ask a question, we assume that you have read the available [Documentation](https://davidsongroup.github.io/flexiplex/).

Before you ask a question, it is best to search for existing [Discussions](https://github.com/DavidsonGroup/flexiplex/discussions) that might help you. In case you have found a suitable discussion and still need clarification, you can write your question in this discussion.

If you then still feel the need to ask a question and need clarification, we recommend the following:

- Open a [Discussion]([https://github.com/DavidsonGroup/flexiplex/issues/new](https://github.com/DavidsonGroup/flexiplex/discussions)).
- Provide as much context as you can about what you're running into, preferably with a sample read

We will then take care of the issue as soon as possible.

## I Want To Contribute

> ### Legal Notice <!-- omit in toc -->
> When contributing to this project, you must agree that you have authored 100% of the content, that you have the necessary rights to the content and that the content you contribute may be provided under the MIT license.

### Reporting Bugs
#### Before Submitting a Bug Report

A good bug report shouldn't leave others needing to chase you up for more information. Therefore, we ask you to investigate carefully, collect information and describe the issue in detail in your report. Please complete the following steps in advance to help us fix any potential bug as fast as possible.

- Make sure that you are using the latest version.
- Determine if your bug is really a bug and not an error on your side e.g. using incompatible environment components/versions (Make sure that you have read the [documentation](https://davidsongroup.github.io/flexiplex/). If you are looking for support, you might want to check [this section](#i-have-a-question)).
- To see if other users have experienced (and potentially already solved) the same issue you are having, check if there is not already a bug report existing for your bug or error in the [bug tracker](https://github.com/DavidsonGroup/flexiplex/issues).
- Also make sure to search the internet (including Stack Overflow) to see if users outside of the GitHub community have discussed the issue.
- Collect information about the bug:
  - Stack trace (backtrace), if you're able to
  - OS, Platform and Version (Linux, macOS, x86, ARM)
  - Version of the interpreter, compiler, SDK, runtime environment, package manager, depending on what seems relevant.
  - Possibly your input and the output
  - Can you reliably reproduce the issue? And can you also reproduce it with older versions?
- If possible, build the latest version on the [repository](https://github.com/DavidsonGroup/flexiplex) and see if the bug is reproducible

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for Flexiplex, **including completely new features and minor improvements to existing functionality**. Following these guidelines will help maintainers and the community to understand your suggestion and find related suggestions.

#### Before Submitting an Enhancement

- Make sure that you are using the latest version.
- Read the [documentation](https://davidsongroup.github.io/flexiplex/) carefully and find out if the functionality is already covered, maybe by an individual configuration.
- Perform a [search](https://github.com/DavidsonGroup/flexiplex/issues) to see if the enhancement has already been suggested. If it has, add a comment to the existing issue instead of opening a new one.
- Find out whether your idea fits with the scope and aims of the project. Flexiplex is designed to easily fit within a larger pipeline and can be used in an automated fashion. There may be other tools which you can use in conjunction with Flexiplex. If you're just targeting a minority of users, consider writing an add-on/plugin library.

#### Submitting an enhancement
Enhancement suggestions are tracked as [GitHub issues](https://github.com/DavidsonGroup/flexiplex/issues).

- Use a clear and descriptive title for the issue to identify the suggestion.
- Provide a step-by-step description of the suggested enhancement in as many details as possible.
- Describe the current behavior and explain which behavior you expected to see instead and why. At this point you can also tell which alternatives do not work for you.
- You may want to include a sample read file or example, to indicate how this suggestion would be helpful.
- Explain why this enhancement would be useful to Flexiplex users. You may also want to point out the other projects that solved it better and which could serve as inspiration.

### Contributing to code
Flexiplex is compiled using the GCC compiler with a makefile available in the repository. Please ensure that it builds prior to submitting a pull request. We expect changes to be well documented, organised, and consistent with the current code style. We want Flexiplex to be accessible and easy to compile, so have a preference for a minimal dependency count. If dependencies must be used, please ensure that they compile and are linked to stable versions.

### Improving The Documentation
Updates to the documentation are welcomed. The kinds of changes appropriate to the documentation are:
- Improved usage guidelines
- More examples showing common use cases
- Documentation of common exceptions which can occur
Updates can be made to the `gh-pages` [branch](https://github.com/DavidsonGroup/flexiplex/tree/gh-pages).
