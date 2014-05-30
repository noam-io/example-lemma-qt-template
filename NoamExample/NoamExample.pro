TEMPLATE = subdirs

SUBDIRS += \
    Application \
    lemma-qt

lemma-qt.subdir    = lemma-qt

Application.depends = lemma-qt
