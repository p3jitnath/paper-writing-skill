\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{paper}[2026/10/06 Generic research article fallback]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[11pt]{article}
