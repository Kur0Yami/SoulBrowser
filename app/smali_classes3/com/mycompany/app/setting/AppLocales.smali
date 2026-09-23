.class public final Lcom/mycompany/app/setting/AppLocales;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a([[Ljava/lang/String;Ljava/util/Locale;)I
    .registers 9

    .line 63
    const/4 v0, 0x0

    if-eqz p1, :cond_43

    if-nez p0, :cond_6

    goto :goto_43

    .line 66
    :cond_6
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 68
    const-string v2, ""

    if-nez v1, :cond_13

    .line 69
    move-object v1, v2

    .line 71
    :cond_13
    if-nez p1, :cond_16

    .line 72
    move-object p1, v2

    .line 74
    :cond_16
    array-length v2, p0

    .line 75
    nop

    .line 76
    const/4 v3, 0x1

    move v5, v0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_42

    .line 77
    aget-object v6, p0, v4

    aget-object v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    aget-object v6, p0, v4

    aget-object v6, v6, v3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 78
    return v4

    .line 80
    :cond_32
    if-nez v5, :cond_3f

    aget-object v6, p0, v4

    aget-object v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 81
    move v5, v4

    .line 76
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 84
    :cond_42
    return v5

    .line 64
    :cond_43
    :goto_43
    return v0
.end method

.method public static a(Landroid/content/Context;)[[Ljava/lang/String;
    .registers 9

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const-string v1, ""

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {p0}, Lcom/mycompany/app/setting/AppLocales;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 23
    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_47

    .line 24
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 25
    const/16 v6, 0x5f

    const/16 v7, 0x2d

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 28
    if-nez v6, :cond_36

    .line 29
    move-object v6, v1

    .line 31
    :cond_36
    if-nez v7, :cond_39

    .line 32
    move-object v7, v1

    .line 34
    :cond_39
    invoke-static {p0, v5}, Lcom/mycompany/app/setting/AppLocales;->c(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v6, v7, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 36
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    .line 37
    array-length v0, p0

    .line 38
    const/4 v1, 0x2

    move v2, v1

    :goto_56
    if-ge v2, v0, :cond_78

    .line 39
    aget-object v3, p0, v2

    .line 40
    move v4, v2

    .line 41
    :goto_5b
    const/4 v5, 0x1

    if-le v4, v5, :cond_73

    add-int/lit8 v5, v4, -0x1

    aget-object v6, p0, v5

    aget-object v6, v6, v1

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_73

    .line 42
    aget-object v5, p0, v5

    aput-object v5, p0, v4

    .line 43
    add-int/lit8 v4, v4, -0x1

    goto :goto_5b

    .line 45
    :cond_73
    aput-object v3, p0, v4

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 47
    :cond_78
    return-object p0
.end method

.method public static b([[Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 51
    if-eqz p0, :cond_34

    if-lez p1, :cond_34

    array-length v0, p0

    if-lt p1, v0, :cond_8

    goto :goto_34

    .line 54
    :cond_8
    aget-object v0, p0, p1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 55
    aget-object p0, p0, p1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    .line 56
    if-eqz p0, :cond_33

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_33

    .line 59
    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_33
    :goto_33
    return-object v0

    .line 52
    :cond_34
    :goto_34
    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7

    .line 88
    const-string v0, "name"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    const-string v3, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "locales_config"

    invoke-virtual {v2, v4, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 91
    if-nez p0, :cond_1a

    .line 92
    return-object v1

    .line 94
    :cond_1a
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 97
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_67

    .line 98
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    const-string v2, "locale"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 99
    const-string v2, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    if-nez v2, :cond_55

    .line 101
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    .line 102
    const/4 v4, 0x0

    :goto_41
    if-ge v4, v3, :cond_55

    .line 103
    invoke-interface {p0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 104
    invoke-interface {p0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    goto :goto_55

    .line 102
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 109
    :cond_55
    :goto_55
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_60

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_60} :catch_66
    .catchall {:try_start_1e .. :try_end_60} :catchall_61

    .line 112
    :cond_60
    goto :goto_1e

    .line 116
    :catchall_61
    move-exception v0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 117
    throw v0

    .line 114
    :catch_66
    move-exception v0

    .line 116
    :cond_67
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 117
    nop

    .line 118
    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 122
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_22

    .line 124
    new-instance v1, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    goto :goto_25

    .line 126
    :cond_22
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 128
    :goto_25
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "language_name"

    invoke-virtual {v1, v3, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 130
    if-eqz p0, :cond_48

    .line 131
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    if-eqz p0, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_48

    .line 133
    return-object p0

    .line 136
    :cond_48
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
