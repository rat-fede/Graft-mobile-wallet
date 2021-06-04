// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'el';

  static m0(status) => "${status} εναπομείναν blocks";

  static m1(serviceNodeKey) => "Θέλετε πραγματικά να ξεκλειδώσετε τα νομίσματα σας από {serviceNodeKey}?";

  static m2(node) => "Είστε βέβαιοι ότι θα αλλάξετε τον τρέχοντα κόμβο σε {node}??";

  static m3(language) => "Αλλαγή γλώσσας σε {language}?";

  static m4(amount, fee) => "Δέσμευση συναλλαγής\nΠοσό: {amount}\nΤέλη: {fee}";

  static m5(key) => "Αντιγράφηκε {key} στο Πρόχειρο";

  static m6(item, app_store) => "ΠΟΤΕ μην εισάγετε το πορτοφόλι Graft {item} σε οποιοδήποτε λογισμικό ή ιστότοπο εκτός από τα ΕΠΙΣΗΜΑΤΑ πορτοφόλια Graft που έχετε κατεβάσει απευθείας από το {app_store}, τον ιστότοπο του Graft ή το GitHub του Graft.\n Είστε βέβαιοι ότι θέλετε να αποκτήσετε πρόσβαση στο πορτοφόλι σας {item};"

  static m7(state_error) => "Αποτυχία ελέγχου ταυτότητας. {state_error}";

  static m8(item) => "ΠΟΤΕ μην δώσετε το πορτοφόλι Graft {graft} σε κανέναν!";

  static m9(recipient_name) => "Θα στέλνετε χρήματα στον\n{recipient_name}";

  static m10(name) => "Δεν έχει καθοριστεί διαδρομή για {name}";

  static m11(transactionPriority) => "Επί του παρόντος, το τέλος ορίζεται σε προτεραιότητα{transactionPriority}.\nΗ προτεραιότητα συναλλαγής μπορεί να προσαρμοστεί στις ρυθμίσεις.";

  static m12(title) => "{title} αντιγράφηκε στο Πρόχειρο";

  static m13(currentVersion) => "Έκδοση {currentVersion}";

  static m14(wallet_name, error) => "Αποτυχία φόρτωσης πορτοφολιού {wallet_name}. {error}";

  static m15(wallet_name, error) => "Αποτυχία κατάργησης του πορτοφολιού {wallet_name}. {error}";

  static m16(wallet_name) => "Φόρτωση πορτοφολιού {wallet_name}";

  static m17(wallet_name) => "Κατάργηση πορτοφολιού {wallet_name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "Blocks_remaining" : m0,
    "account" : MessageLookupByLibrary.simpleMessage("Λογαριασµός"),
    "accounts" : MessageLookupByLibrary.simpleMessage("Λογαριασµοί"),
    "add" : MessageLookupByLibrary.simpleMessage("Προσθήκη"),
    "add_new_word" : MessageLookupByLibrary.simpleMessage("Προσθέστε νέα λέξη"),
    "address_book" : MessageLookupByLibrary.simpleMessage("Βιβλίο Διευθύνσεων"),
    "address_book_menu" : MessageLookupByLibrary.simpleMessage("Βιβλίο διευθύνσεων"),
    "all" : MessageLookupByLibrary.simpleMessage("ΟΛΑ"),
    "amount" : MessageLookupByLibrary.simpleMessage("Ποσό: "),
    "amount_detail_detailed" : MessageLookupByLibrary.simpleMessage("4 - Λεπτομερής"),
    "amount_detail_none" : MessageLookupByLibrary.simpleMessage("0 - Τίποτα"),
    "amount_detail_normal" : MessageLookupByLibrary.simpleMessage("2 - Κανονικό"),
    "amount_detail_ultra" : MessageLookupByLibrary.simpleMessage("9 - Ακραίο"),
    "auth_store_ban_timeout" : MessageLookupByLibrary.simpleMessage("απαγόρευση_χρονικού_ορίου"),
    "auth_store_banned_for" : MessageLookupByLibrary.simpleMessage("Απαγορεύεται η χρήση για "),
    "auth_store_banned_minutes" : MessageLookupByLibrary.simpleMessage(" λεπτά"),
    "auth_store_incorrect_password" : MessageLookupByLibrary.simpleMessage("Λάθος PIN"),
    "authenticated" : MessageLookupByLibrary.simpleMessage("Έλεγχος ταυτότητας"),
    "authentication" : MessageLookupByLibrary.simpleMessage("Αυθεντικοποίηση"),
    "available_balance" : MessageLookupByLibrary.simpleMessage("Διαθέσιμο Υπόλοιπο"),
    "biometric_auth_reason" : MessageLookupByLibrary.simpleMessage("Σαρώστε το δακτυλικό σας αποτύπωμα για έλεγχο ταυτότητας"),
    "body_confirm_unlock_stake" : m1,
    "cancel" : MessageLookupByLibrary.simpleMessage("Ακύρωση"),
    "change" : MessageLookupByLibrary.simpleMessage("Αλλαγή"),
    "change_current_node" : m2,
    "change_language" : MessageLookupByLibrary.simpleMessage("Αλλάξτε γλώσσα"),
    "change_language_to" : m3,
    "changelog" : MessageLookupByLibrary.simpleMessage("Καταγραφή αλλαγών"),
    "clear" : MessageLookupByLibrary.simpleMessage("Καθαρισμός"),
    "commit_transaction_amount_fee" : m4,
    "confirm" : MessageLookupByLibrary.simpleMessage("Επιβεβαίωση"),
    "confirm_sending" : MessageLookupByLibrary.simpleMessage("Επιβεβαίωση αποστολής"),
    "contact" : MessageLookupByLibrary.simpleMessage("Επαφή"),
    "contact_name" : MessageLookupByLibrary.simpleMessage("Όνομα Επαφής"),
    "continue_text" : MessageLookupByLibrary.simpleMessage("Συνεχίστε"),
    "copied_key_to_clipboard" : m5,
    "copied_to_clipboard" : MessageLookupByLibrary.simpleMessage("Αντιγράφηκε στο Πρόχειρο"),
    "copy" : MessageLookupByLibrary.simpleMessage("Αντιγραφή"),
    "create_new" : MessageLookupByLibrary.simpleMessage("Δημιουργήστε νέο"),
    "dangerzone" : MessageLookupByLibrary.simpleMessage("Επικίνδυνη ζώνη"),
    "dangerzone_warning" : m6,
    "delete" : MessageLookupByLibrary.simpleMessage("Διαγράψτε"),
    "digit_pin" : MessageLookupByLibrary.simpleMessage("-ψηφίο PIN"),
    "edit" : MessageLookupByLibrary.simpleMessage("Επεξεργασία"),
    "enter_your_pin" : MessageLookupByLibrary.simpleMessage("Εισαγάγετε το PIN σας"),
    "enter_your_pin_again" : MessageLookupByLibrary.simpleMessage("Εισαγάγετε ξανά το pin σας"),
    "error" : MessageLookupByLibrary.simpleMessage("Σφάλµα"),
    "error_text_account_name" : MessageLookupByLibrary.simpleMessage("Το όνομα λογαριασμού μπορεί να περιέχει μόνο γράμματα, αριθμούς\n και πρέπει να έχει μήκος από 1 έως 15 χαρακτήρες"),
    "error_text_address" : MessageLookupByLibrary.simpleMessage("Η διεύθυνση πορτοφολιού πρέπει να αντιστοιχεί στον τύπο\n του κρυπτονομίσματος"),
    "error_text_amount" : MessageLookupByLibrary.simpleMessage("Το ποσό μπορεί να περιέχει μόνο αριθμούς"),
    "error_text_contact_name" : MessageLookupByLibrary.simpleMessage("Το όνομα της επαφής δεν μπορεί να περιέχει σύμβολα `,'\"\n και πρέπει να έχει μήκος μεταξύ 1 και 32 χαρακτήρων"),
    "error_text_crypto_currency" : MessageLookupByLibrary.simpleMessage("Ο αριθμός των ψηφίων κλάσματος\n πρέπει να είναι μικρότερος ή ίσος με 12"),
    "error_text_fiat" : MessageLookupByLibrary.simpleMessage("Η αξία του ποσού δεν μπορεί να υπερβαίνει το διαθέσιμο υπόλοιπο.\n Ο αριθμός των ψηφίων κλάσματος πρέπει να είναι μικρότερος ή ίσος με 2"),
    "error_text_keys" : MessageLookupByLibrary.simpleMessage("Τα κλειδιά πορτοφολιού μπορούν να περιέχουν μόνο 64 χαρακτήρες σε δεκαεξαδικό"),
    "error_text_node_address" : MessageLookupByLibrary.simpleMessage("Εισαγάγετε μια διεύθυνση iPv4"),
    "error_text_node_port" : MessageLookupByLibrary.simpleMessage("Η θύρα κόμβου μπορεί να περιέχει μόνο αριθμούς μεταξύ 0 και 65535"),
    "error_text_graft" : MessageLookupByLibrary.simpleMessage("η τιμή του Graft δεν μπορεί να υπερβαίνει το διαθέσιμο υπόλοιπο.\n Ο αριθμός των ψηφίων κλάσματος πρέπει να είναι μικρότερος ή ίσος με 12"),
    "error_text_payment_id" : MessageLookupByLibrary.simpleMessage("Το αναγνωριστικό πληρωμής μπορεί να περιέχει μόνο από 16 έως 64 χαρακτήρες σε δεκαεξαδικό"),
    "error_text_service_node" : MessageLookupByLibrary.simpleMessage("Ένα κλειδί κόμβου υπηρεσίας μπορεί να περιέχει μόνο 64 χαρακτήρες σε δεκαεξαδικό"),
    "error_text_subaddress_name" : MessageLookupByLibrary.simpleMessage("Το όνομα της δευτερεύουσας διεύθυνσης δεν μπορεί να περιέχει σύμβολα `,'\" και πρέπει να έχει μήκος μεταξύ 1 και 20 χαρακτήρων"),
    "error_text_wallet_name" : MessageLookupByLibrary.simpleMessage("Το όνομα του πορτοφολιού μπορεί να περιέχει μόνο γράμματα, αριθμούς\n και πρέπει να έχει μήκος από 1 έως 15 χαρακτήρες"),
    "failed_authentication" : m7,
    "faq" : MessageLookupByLibrary.simpleMessage("Συχνά Yποβαλλόμενες Eρωτήσεις"),
    "fetching" : MessageLookupByLibrary.simpleMessage("Ανάκτηση"),
    "filters" : MessageLookupByLibrary.simpleMessage("Φίλτρα"),
    "first_wallet_text" : MessageLookupByLibrary.simpleMessage("Φοβερό πορτοφόλι\nγια το Graft"),
    "full_balance" : MessageLookupByLibrary.simpleMessage("Πλήρες Yπόλοιπο"),
    "hidden_balance" : MessageLookupByLibrary.simpleMessage("Κρυφό Υπόλοιπο"),
    "id" : MessageLookupByLibrary.simpleMessage("Ταυτότητα: "),
    "incoming" : MessageLookupByLibrary.simpleMessage("Εισερχόμενα"),
    "incorrect_seed" : MessageLookupByLibrary.simpleMessage("Το κείμενο που εισαγάγατε δεν είναι έγκυρο."),
    "keys_title" : MessageLookupByLibrary.simpleMessage("Κλειδιά"),
    "loading_your_wallet" : MessageLookupByLibrary.simpleMessage("Φόρτωση του πορτοφολιού σας"),
    "login" : MessageLookupByLibrary.simpleMessage("Σύνδεση"),
    "never_give_your" : m8,
    "new_subaddress_create" : MessageLookupByLibrary.simpleMessage("Δημιουργία"),
    "new_subaddress_label_name" : MessageLookupByLibrary.simpleMessage("Όνομα ετικέτας"),
    "new_subaddress_title" : MessageLookupByLibrary.simpleMessage("Νέα δευτερεύουσα διεύθυνση"),
    "new_wallet" : MessageLookupByLibrary.simpleMessage("Νέο Πορτοφόλι"),
    "node_address" : MessageLookupByLibrary.simpleMessage("Διεύθυνση Κόμβου"),
    "node_new" : MessageLookupByLibrary.simpleMessage("Νέος Κόμβος"),
    "node_port" : MessageLookupByLibrary.simpleMessage("Θύρα Κόμβου"),
    "node_reset_settings_title" : MessageLookupByLibrary.simpleMessage("Επαναφορά ρυθμίσεων"),
    "nodes" : MessageLookupByLibrary.simpleMessage("Κόμβοι"),
    "nodes_list_reset_to_default_message" : MessageLookupByLibrary.simpleMessage("Είστε βέβαιοι ότι θέλετε να επαναφέρετε τις ρυθμίσεις στην προεπιλογή;"),
    "nothing_staked" : MessageLookupByLibrary.simpleMessage("Δεν έχετε κλειδώσει κανένα νόμισμα μέχρι τώρα"),
    "ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "openalias_alert_content" : m9,
    "openalias_alert_title" : MessageLookupByLibrary.simpleMessage("Εντοπίστηκε παραλήπτης Graft"),
    "outgoing" : MessageLookupByLibrary.simpleMessage("Εξερχόμενα"),
    "graft_available_balance" : MessageLookupByLibrary.simpleMessage("Διαθέσιμα Υπόλοιπα Graft"),
    "graft_full_balance" : MessageLookupByLibrary.simpleMessage("Graft Πλήρες Yπόλοιπο"),
    "graft_hidden" : MessageLookupByLibrary.simpleMessage("κρυμμένα Graft"),
    "password" : MessageLookupByLibrary.simpleMessage("Κωδικός Πρόσβασης"),
    "paste" : MessageLookupByLibrary.simpleMessage("Επικόλληση"),
    "pending" : MessageLookupByLibrary.simpleMessage(" (εκκρεμής) "),
    "pin_is_incorrect" : MessageLookupByLibrary.simpleMessage("Το PIN δεν είναι σωστό"),
    "please_make_selection" : MessageLookupByLibrary.simpleMessage("Κάντε την παρακάτω επιλογή για να\n δημιουργήσετε ή να ανακτήσετε το πορτοφόλι σας."),
    "please_select" : MessageLookupByLibrary.simpleMessage("Παρακαλώ επιλέξτε: "),
    "please_try_to_connect_to_another_node" : MessageLookupByLibrary.simpleMessage("Προσπαθήστε να συνδεθείτε σε έναν άλλο κόμβο"),
    "receive" : MessageLookupByLibrary.simpleMessage("Λήψη"),
    "receive_amount" : MessageLookupByLibrary.simpleMessage("Ποσό"),
    "received" : MessageLookupByLibrary.simpleMessage("Λήφθηκε"),
    "reconnect" : MessageLookupByLibrary.simpleMessage("Επανασύνδεση"),
    "reconnect_alert_text" : MessageLookupByLibrary.simpleMessage("Είστε βέβαιοι ότι θέλετε να συνδεθείτε ξανά;?"),
    "reconnection" : MessageLookupByLibrary.simpleMessage("Ανασύνδεση"),
    "reload_fiat" : MessageLookupByLibrary.simpleMessage("Επαναφόρτωση δεδομένων fiat νομίσματος"),
    "remove" : MessageLookupByLibrary.simpleMessage("Αφαιρέστε"),
    "remove_node" : MessageLookupByLibrary.simpleMessage("Κατάργηση κόμβου"),
    "remove_node_message" : MessageLookupByLibrary.simpleMessage("Είστε βέβαιοι ότι θέλετε να καταργήσετε τον επιλεγμένο κόμβο;"),
    "rescan" : MessageLookupByLibrary.simpleMessage("Επανάληψη σάρωσης"),
    "reset" : MessageLookupByLibrary.simpleMessage("Επαναφορά"),
    "restore_address" : MessageLookupByLibrary.simpleMessage("Διεύθυνση"),
    "restore_description_from_backup" : MessageLookupByLibrary.simpleMessage("Μπορείτε να επαναφέρετε ολόκληρη την εφαρμογή Πορτοφόλι Graft από το αντίγραφο ασφαλείας του αρχείου σας"),
    "restore_description_from_keys" : MessageLookupByLibrary.simpleMessage("Επαναφέρετε το πορτοφόλι σας από δημιουργημένες πληκτρολογήσεις που έχουν αποθηκευτεί από τα ιδιωτικά σας κλειδιά"),
    "restore_description_from_seed" : MessageLookupByLibrary.simpleMessage("Επαναφορά από φράση ανάκτησης"),
    "restore_description_from_seed_keys" : MessageLookupByLibrary.simpleMessage("Πάρτε πίσω το πορτοφόλι σας από την φράση ανάκτησης/κλειδιά\n που έχετε αποθηκεύσει σε ασφαλές μέρος"),
    "restore_from_seed_placeholder" : MessageLookupByLibrary.simpleMessage("Παρακαλώ εισαγάγετε ή επικολλήστε την φράση ανάκτησης σας εδώ"),
    "restore_next" : MessageLookupByLibrary.simpleMessage("Επόμενο"),
    "restore_recover" : MessageLookupByLibrary.simpleMessage("Restore"),
    "restore_restore_wallet" : MessageLookupByLibrary.simpleMessage("Ανάκτηση Πορτοφολιού"),
    "restore_seed_keys_restore" : MessageLookupByLibrary.simpleMessage("Επαναφορά φράσης ανάκτησης/κλειδιά"),
    "restore_spend_key_private" : MessageLookupByLibrary.simpleMessage("Κλειδί δαπανών (ιδιωτικό)"),
    "restore_title_from_backup" : MessageLookupByLibrary.simpleMessage("Επαναφορά από ένα εφεδρικό αρχείο"),
    "restore_title_from_keys" : MessageLookupByLibrary.simpleMessage("Επαναφορά από κλειδιά"),
    "restore_title_from_seed" : MessageLookupByLibrary.simpleMessage("Επαναφορά από φράση ανάκτησης"),
    "restore_title_from_seed_keys" : MessageLookupByLibrary.simpleMessage("Επαναφορά από φράση ανάκτησης/κλειδιά"),
    "restore_view_key_private" : MessageLookupByLibrary.simpleMessage("Προβολή κλειδιού (ιδιωτικό)"),
    "restore_wallet" : MessageLookupByLibrary.simpleMessage("Επαναφορά πορτοφολιού"),
    "restore_wallet_name" : MessageLookupByLibrary.simpleMessage("Όνομα Πορτοφολιού"),
    "restore_wallet_restore_description" : MessageLookupByLibrary.simpleMessage("Περιγραφή επαναφοράς πορτοφολιού"),
    "router_no_route" : m10,
    "save" : MessageLookupByLibrary.simpleMessage("Αποθήκευση"),
    "seed_language_chinese" : MessageLookupByLibrary.simpleMessage("Κινέζικα"),
    "seed_language_choose" : MessageLookupByLibrary.simpleMessage("Επιλέξτε γλώσσα για την φράση ανάκτησης"),
    "seed_language_dutch" : MessageLookupByLibrary.simpleMessage("Ολλανδικά"),
    "seed_language_english" : MessageLookupByLibrary.simpleMessage("Αγγλικά"),
    "seed_language_french" : MessageLookupByLibrary.simpleMessage("Γαλλικά"),
    "seed_language_german" : MessageLookupByLibrary.simpleMessage("Γερμανικά"),
    "seed_language_italian" : MessageLookupByLibrary.simpleMessage("Ιταλικά"),
    "seed_language_japanese" : MessageLookupByLibrary.simpleMessage("Ιαπωνικά"),
    "seed_language_next" : MessageLookupByLibrary.simpleMessage("Επόμενο"),
    "seed_language_portuguese" : MessageLookupByLibrary.simpleMessage("Πορτογαλικά"),
    "seed_language_russian" : MessageLookupByLibrary.simpleMessage("Ρωσικά"),
    "seed_language_spanish" : MessageLookupByLibrary.simpleMessage("Ισπανικά"),
    "seed_share" : MessageLookupByLibrary.simpleMessage("Μοιραστείτε την φράση ανάκτησης"),
    "seed_title" : MessageLookupByLibrary.simpleMessage("Φράση ανάκτησης"),
    "send" : MessageLookupByLibrary.simpleMessage("Αποστολή"),
    "send_creating_transaction" : MessageLookupByLibrary.simpleMessage("Δημιουργία συναλλαγής"),
    "send_error_currency" : MessageLookupByLibrary.simpleMessage("Το νόμισμα μπορεί να περιέχει μόνο αριθμούς"),
    "send_estimated_fee" : MessageLookupByLibrary.simpleMessage("Εκτιµώµενο τέλος:"),
    "send_graft" : MessageLookupByLibrary.simpleMessage("Αποστολή Graft"),
    "send_graft_address" : MessageLookupByLibrary.simpleMessage("Διεύθυνση Graft"),
    "send_priority" : m11,
    "send_title" : MessageLookupByLibrary.simpleMessage("Αποστολή Graft"),
    "send_your_wallet" : MessageLookupByLibrary.simpleMessage("Το πορτοφόλι σας"),
    "sending" : MessageLookupByLibrary.simpleMessage("Γίνεται η αποστολή"),
    "sent" : MessageLookupByLibrary.simpleMessage("Στάλθηκε"),
    "service_node_key" : MessageLookupByLibrary.simpleMessage("Κλειδί Κόμβου Υπηρεσίας"),
    "settings_all" : MessageLookupByLibrary.simpleMessage("ΟΛΑ"),
    "settings_allow_biometric_authentication" : MessageLookupByLibrary.simpleMessage("Να επιτρέπεται ο βιομετρικός έλεγχος ταυτότητας"),
    "settings_balance_detail" : MessageLookupByLibrary.simpleMessage("Δεκαδικά"),
    "settings_change_language" : MessageLookupByLibrary.simpleMessage("Αλλάξτε γλώσσα"),
    "settings_change_pin" : MessageLookupByLibrary.simpleMessage("Αλλαγή PIN"),
    "settings_currency" : MessageLookupByLibrary.simpleMessage("Νόμισμα"),
    "settings_current_node" : MessageLookupByLibrary.simpleMessage("Τρέχων κόμβος"),
    "settings_dark_mode" : MessageLookupByLibrary.simpleMessage("Σκοτεινή λειτουργία"),
    "settings_display_balance_as" : MessageLookupByLibrary.simpleMessage("Εμφάνιση υπολοίπου ως"),
    "settings_display_on_dashboard_list" : MessageLookupByLibrary.simpleMessage("Εμφάνιση στη λίστα ταμπλό"),
    "settings_enable_fiat_currency" : MessageLookupByLibrary.simpleMessage("Ενεργοποίηση μετατροπής νομίσματος fiat"),
    "settings_fee_priority" : MessageLookupByLibrary.simpleMessage("Προτεραιότητα χρέωσης"),
    "settings_nodes" : MessageLookupByLibrary.simpleMessage("Κόμβοι"),
    "settings_none" : MessageLookupByLibrary.simpleMessage("Τίποτα"),
    "settings_personal" : MessageLookupByLibrary.simpleMessage("Προσωπικό"),
    "settings_save_recipient_address" : MessageLookupByLibrary.simpleMessage("Αποθήκευση διεύθυνσης παραλήπτη"),
    "settings_support" : MessageLookupByLibrary.simpleMessage("Υποστήριξη"),
    "settings_terms_and_conditions" : MessageLookupByLibrary.simpleMessage("Οροι και Προϋποθέσεις"),
    "settings_title" : MessageLookupByLibrary.simpleMessage("Ρυθμίσεις"),
    "settings_transactions" : MessageLookupByLibrary.simpleMessage("Συναλλαγές"),
    "settings_wallets" : MessageLookupByLibrary.simpleMessage("Πορτοφόλια"),
    "setup_pin" : MessageLookupByLibrary.simpleMessage("Ρύθμιση PIN"),
    "setup_successful" : MessageLookupByLibrary.simpleMessage("Το PIN σας έχει ρυθμιστεί με επιτυχία!"),
    "share_address" : MessageLookupByLibrary.simpleMessage("Κοινοποίηση διεύθυνσης"),
    "show_keys" : MessageLookupByLibrary.simpleMessage("Εμφάνιση Κλειδιών"),
    "show_seed" : MessageLookupByLibrary.simpleMessage("Εμφάνιση φράση ανάκτησης"),
    "spend_key_private" : MessageLookupByLibrary.simpleMessage("Κλειδί δαπανών (ιδιωτικό)"),
    "spend_key_public" : MessageLookupByLibrary.simpleMessage("Κλειδί δαπανών (δημόσιο)"),
    "stake_more" : MessageLookupByLibrary.simpleMessage("Κλειδώστε περισσότερα νομίσματα"),
    "stake_graft" : MessageLookupByLibrary.simpleMessage("Κλειδώστε Graft"),
    "start_staking" : MessageLookupByLibrary.simpleMessage("Αρχίστε να κλειδώνετε νομίσματα"),
    "status" : MessageLookupByLibrary.simpleMessage("Κατάσταση: "),
    "subaddress_title" : MessageLookupByLibrary.simpleMessage("Λίστα υπο-διευθύνσεων"),
    "subaddresses" : MessageLookupByLibrary.simpleMessage("Υποδιευθύνσεις"),
    "sync_status_connected" : MessageLookupByLibrary.simpleMessage("ΣΥΝΔΕΔΕΜΕΝΟ"),
    "sync_status_connecting" : MessageLookupByLibrary.simpleMessage("ΓΙΝΕΤΑΙ ΣΥΝΔΕΣΗ"),
    "sync_status_failed_connect" : MessageLookupByLibrary.simpleMessage("ΑΠΟΤΥΧΗΜΕΝΗ ΣΥΝΔΕΣΗ ΣΤΟΝ ΚΟΜΒΟ"),
    "sync_status_not_connected" : MessageLookupByLibrary.simpleMessage("ΜΗ ΣΥΝΔΕΔΕΜΕΝΟ"),
    "sync_status_starting_sync" : MessageLookupByLibrary.simpleMessage("ΕΝΑΡΞΗ ΣΥΝΚΡΙΣΜΟΥ"),
    "sync_status_synchronized" : MessageLookupByLibrary.simpleMessage("ΣΥΓΧΡΟΝΙΣΜΕΝΟ"),
    "sync_status_synchronizing" : MessageLookupByLibrary.simpleMessage("ΣΥΓΧΡΟΝΙΣΜΟΣ"),
    "title_confirm_unlock_stake" : MessageLookupByLibrary.simpleMessage("Ξεκλειδώστε τα νομίσματα σας"),
    "title_new_stake" : MessageLookupByLibrary.simpleMessage("Νέα κλειδωμένα νομίσματα"),
    "title_stakes" : MessageLookupByLibrary.simpleMessage("Κλειδωμένα νομίσματα"),
    "today" : MessageLookupByLibrary.simpleMessage("Σήμερα"),
    "transaction_details_amount" : MessageLookupByLibrary.simpleMessage("Ποσό"),
    "transaction_details_copied" : m12,
    "transaction_details_date" : MessageLookupByLibrary.simpleMessage("Date"),
    "transaction_details_height" : MessageLookupByLibrary.simpleMessage("Ύψος"),
    "transaction_details_recipient_address" : MessageLookupByLibrary.simpleMessage("Διεύθυνση παραλήπτη"),
    "transaction_details_title" : MessageLookupByLibrary.simpleMessage("Λεπτομέρειες Συναλλαγής"),
    "transaction_details_transaction_id" : MessageLookupByLibrary.simpleMessage("Ταυτότητα συναλλαγής"),
    "transaction_priority_blink" : MessageLookupByLibrary.simpleMessage("Αναβοσβήσιμο"),
    "transaction_priority_slow" : MessageLookupByLibrary.simpleMessage("Αργά"),
    "transaction_sent" : MessageLookupByLibrary.simpleMessage("Η συναλλαγή εστάλη!"),
    "transactions" : MessageLookupByLibrary.simpleMessage("Συναλλαγές"),
    "transactions_by_date" : MessageLookupByLibrary.simpleMessage("Συναλλαγές κατά ημερομηνία"),
    "unable_unlock_stake" : MessageLookupByLibrary.simpleMessage("Δεν είναι δυνατό το ξεκλείδωμα των νομισμάτων σας"),
    "unlock_stake_requested" : MessageLookupByLibrary.simpleMessage("Αίτημα ξεκλειδώματος"),
    "use" : MessageLookupByLibrary.simpleMessage("Μετάβαση σε  "),
    "version" : m13,
    "view_key_private" : MessageLookupByLibrary.simpleMessage("Προβολή κλειδιού (ιδιωτικό)"),
    "view_key_public" : MessageLookupByLibrary.simpleMessage("Κλειδί προβολής (δημόσιο)"),
    "wallet_keys" : MessageLookupByLibrary.simpleMessage("Κλειδιά πορτοφολιού"),
    "wallet_list_create_new_wallet" : MessageLookupByLibrary.simpleMessage("Δημιουργία νέου Πορτοφολιού"),
    "wallet_list_failed_to_load" : m14,
    "wallet_list_failed_to_remove" : m15,
    "wallet_list_load_wallet" : MessageLookupByLibrary.simpleMessage("Φορτώστε το πορτοφόλι"),
    "wallet_list_loading_wallet" : m16,
    "wallet_list_removing_wallet" : m17,
    "wallet_list_restore_wallet" : MessageLookupByLibrary.simpleMessage("Επαναφορά Πορτοφολιού"),
    "wallet_list_title" : MessageLookupByLibrary.simpleMessage("Πορτοφολι Graft"),
    "wallet_menu" : MessageLookupByLibrary.simpleMessage("Μενού"),
    "wallet_name" : MessageLookupByLibrary.simpleMessage("Όνομα πορτοφολιού"),
    "wallet_restoration_store_incorrect_seed_length" : MessageLookupByLibrary.simpleMessage("Λανθασμένο μέγεθος φράσης ανάκτησης"),
    "wallets" : MessageLookupByLibrary.simpleMessage("Πορτοφόλια"),
    "welcome" : MessageLookupByLibrary.simpleMessage("ΚΑΛΩΣ ΗΡΘΑΤΕ\nΣΤΟ ΠΟΡΤΟΦΟΛΙ Graft"),
    "widgets_address" : MessageLookupByLibrary.simpleMessage("Διεύθυνση"),
    "widgets_or" : MessageLookupByLibrary.simpleMessage("ή"),
    "widgets_restore_from_blockheight" : MessageLookupByLibrary.simpleMessage("Επαναφορά από το ύψος του μπλοκ"),
    "widgets_restore_from_date" : MessageLookupByLibrary.simpleMessage("Επαναφορά από ημερομηνία"),
    "widgets_seed" : MessageLookupByLibrary.simpleMessage("Φράση ανάκτησης"),
    "yes_im_sure" : MessageLookupByLibrary.simpleMessage("Ναι είμαι σίγουρος!"),
    "yesterday" : MessageLookupByLibrary.simpleMessage("Εχθές"),
    "your_contributions" : MessageLookupByLibrary.simpleMessage("Οι Sυνεισφορές σας")
  };
}