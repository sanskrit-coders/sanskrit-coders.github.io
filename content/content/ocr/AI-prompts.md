+++
title = "AI prompts"
+++

## chandAmAma - kArtik
### Role and Context:

You are an expert Sanskrit linguist, a meticulous digital archivist, and an advanced OCR and layout understanding system. Your task is to accurately transcribe and intelligently structure the linguistically relevant content from the provided PDF scans of an old Sanskrit magazine. Precision, adherence to formatting rules, and deep understanding of Sanskrit context are paramount.

### Input:

I will provide you with page-by-page scans (or the full PDF document) of an old Sanskrit magazine.

### Primary Goal:

To extract specified text content in a clean, rationalized, and structured format, while intelligently ignoring irrelevant elements.

---

### Detailed Instructions:

#### 1. Content Inclusion Criteria (Extract These):

Carefully transcribe the full text of:
*   Articles (लेखाः): Any non-fiction prose pieces.
*   Stories (कथाः): Fictional narratives.
*   Quizzes (प्रश्नोत्तरी): Questions, puzzles, or challenges.
*   Content Index (विषयसूची / अनुक्रमणिका): The table of contents.
*   Poems (कविताः / काव्यानि): Verse compositions.
*   Text within Comic Panels (चित्रकथायाः पाठः): Any dialogue or narration explicitly part of a comic strip.

#### 2. Content Exclusion Criteria (Ignore These Completely):

*   All Images: Do not transcribe any text that is part of a standard image, illustration, or photograph, unless it's text within a comic panel (as specified above).
*   Advertisements (विज्ञापनम्): Ignore all commercial advertisements.
*   Page Numbers: Do not transcribe page numbers unless they are part of the Content Index.
*   Headers/Footers: Unless they contain the author/title info to be moved (see point 4).
*   Magazine Mastheads/Logos: Do not transcribe the main magazine title/logo on the cover or inside pages, unless it's part of the Content Index itself.

#### 3. Text Normalization and Rationalization:

* There must not be any space to the left of any punctuation character. इति । is WRONG. इति। is right. Do this for question marks, quotes, exclamation marks etc.
* Replace two or more dots ... with an ellipsis character. 
*   Double Quotes (“ ” „ -> "):
    *   Convert all variations of opening double quotes (e.g., “, „) into a single, standardized plain double quote character: "
    *   Convert all variations of closing double quotes (e.g., ”, ‟) into a single, standardized plain double quote character: "
*  Single Quotes (‘ ’ ‚ -> '):
    *   Convert all variations of opening single quotes (e.g., ‘, ‚) into a single, standardized plain single quote character: '
    *   Convert all variations of closing single quotes (e.g., ’, ‛) into a single, standardized plain single quote character: '
*  Sensible Decision on Unbalanced/Wrong Quote Marks (Crucial - Use Sanskrit Knowledge):
    *   If you encounter an unbalanced quote (e.g., an opening quote without a closing one, or vice-versa) or a quote mark that appears grammatically incorrect or misplaced within a Sanskrit sentence, use your deep knowledge of Sanskrit grammar, syntax, and common idiomatic expressions to make the most sensible correction.
    *   Prioritize preserving the intended meaning of the Sanskrit text.
    *   Examples of sensible decisions:
        *   If a quote is opened (") at the start of a sentence/paragraph and there's no explicit closing quote, assume it closes at the end of the current logical statement or paragraph.
        *   If a closing quote (") appears without an obvious opening one, assess if it's genuinely a quote closure (implying an uncaptured opening) or a stray mark. If it's a quote, try to infer its logical start.
        *   If a quote mark is used incorrectly (e.g., in place of a punctuation mark), correct it to the standard punctuation while ensuring the quoted text, if any, remains properly enclosed.
    * Quotes will generally begin around the actions of speaking/thinking (उक्तवान्/वती, चिन्तितवान्/वती etc) or words like thus (यत्). They will end around the word इति.
* A hyphen - before a quote with an optional space between the two is probably an mdash.
*   Paragraph Separation:
    *   Separate distinct paragraphs within an article/story/poem using three newline characters (\n\n\n).
    *   Do not add extra newlines for line breaks within a paragraph unless it's a true paragraph break indicated by the layout or content.
* Join the lines of each paragraph using a space character in lieu of the \n. We need one paragraph to occupy one line of the output.
*   Author/Info Placement:
    *   Any author names, contributor notes, 'Part X of Y', or other relevant metadata (normally found at the bottom of an article, story, or poem on a page) must be moved to the very beginning of the extracted text for that piece.

#### 4. Layout Handling (Column Flow):

Accurately follow the reading order. Whether the content is presented in a single column or multiple columns (typically two-column layouts are common in magazines), ensure the text flows correctly. This means:
*   Read from the top of the first column to its bottom.
*   Then, move to the top of the next column on the same page and read to its bottom.
*   Only after completing all columns on the current page, proceed to the next page.
*   Do not mix text across columns incorrectly.
*  Verify that no text is left undetected/unread. Do not jump from the end of column 1 to the middle of column 2 ignoring the first half of the column. This can happen sometimes based on wrong assumptions about image widths.

#### 5. Output Format and Structure:

* We use a document based on s-expressions. The content will be fully marked up later. But do the basic document and paragraph marking (document :type "story"\n\n\n(p .......)\n\n\n(p .......)\n\n\n) first.

*  For each extracted content piece, provide it in the following structured format. If an article/story spans multiple pages, transcribe it continuously as a single piece under one heading. 

*  Within each paragraph, if you are confident that the quotes are balanced, convert the quotes to a structured format. So `अनन्तरं बहु
विचार्य मापनं कृत्वा तस्याः छायायाः मूल्यं 'एकशतं रुप्यकाणि देयानि' इति निश्चयः अभवत्।` becomes `अनन्तरं बहु विचार्य मापनं कृत्वा तस्याः छायायाः मूल्यं
(' एकशतं रुप्यकाणि देयानि) इति निश्चयः अभवत्।` This is RIGHT: (' एकशतं रुप्यकाणि देयानि). These are WRONG: ('एकशतं रुप्यकाणि देयानि') and ('एकशतं रुप्यकाणि देयानि). This will also applied to nested quotes ("..'...'.." and '.."..."..').

*Example Output Segment:*


(document :type "article"
(title संस्कृतभाषायाः महत्वम्)
(author श्री. रामचन्द्रः शास्त्री)

(p संस्कृतभाषा विश्वस्य प्राचीनतमासु भाषासु अन्यतमा अस्ति। अस्याः भाषायाः व्याकरणं पाणिना विरचितम् अस्ति, यत् अत्यन्तं वैज्ञानिकं सुव्यवस्थितं च मन्यते।)

(p भारते संस्कृतस्य महत्वं बहुधा स्वीक्रियते। अनेके ग्रन्थाः, पुराणाः, काव्यानि च संस्कृतभाषया एव लिखितानि सन्ति।)
)

=== End of Article ===

(document :type "story"
(title शृगालस्य चतुराई)
(note पञ्चविंशतिवर्षेभ्यः पूर्वं चन्दमामायां प्रकाशिता कथा)

(p एकस्मिन् वने एकः धूर्त शृगालः निवसति स्म। सः प्रतिदिनं नूतनं उपायं चिन्तयति स्म कथं सः मृगान् खादितुं शक्नोति।)

(p एकदा सः एकं सिंहं दृष्ट्वा भीतः अभवत्। परन्तु सः शीघ्रं एव एकं उपायं अचिन्तयत्। (" अहं सिंहस्य मित्रं भविष्यामि) इति सः अचिन्तयत्।)
)

=== End of Story ===
(document :type "comic"
(title पञ्चछात्राः)

(p मम नाम रमेशः अस्ति।)
(p भवान् कुत्र गच्छति?)
(p अहं विद्यालयं गच्छामि।)
)

=== End of Comic ===


*Important Considerations:*
*   *Accuracy:* Strive for 100% accuracy in transcription.
*   *Devanagari:* Keep the output in Devanagari script as found in the original, without transliteration, unless the original uses a different script (very unlikely).
*   *Uncertainty:* If any part of the text is illegible or you are uncertain about a quote correction, please indicate it clearly within [square brackets with a note, e.g., [पाठः अस्पष्टः] or [uncertain quote correction].
*   *Page-by-page processing:* If your system processes page by page, please indicate the page number before the content extracted from that page. If it processes the whole document, just provide continuous output. *IMPORTANT:* DO NOT do this for articles/stories/content spanning multiple pages. In those cases, the page number should only be indicated at the very start. The end marker === End of Comic === etc will then only appear at the actual end of the content, not at the end of each page.
*   *Empty Pages:* If a page contains only ignored content (e.g., just advertisements or blank space), simply state: Page X: Contains only ignored content.
