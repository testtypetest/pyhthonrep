from google.cloud import translate

def translate_text(text, target_language):
    translate_client = translate.TranslationServiceClient()
    response = translate_client.translate_text(
        parent="projects/my-project",
        contents=[text],
        target_language_code=target_language
    )
    translation = response.translations[0].translated_text
    print("Translated text:", translation)

def main():
    text = "Hello, how are you?"
    target_language = "fr"  # French
    translate_text(text, target_language)

if __name__ == "__main__":
    main()
