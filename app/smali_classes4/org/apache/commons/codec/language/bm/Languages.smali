.class public Lorg/apache/commons/codec/language/bm/Languages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;,
        Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/EnumMap;

.field public static final c:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

.field public static final d:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lorg/apache/commons/codec/language/bm/NameType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->b:Ljava/util/EnumMap;

    .line 9
    .line 10
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_4

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    sget-object v5, Lorg/apache/commons/codec/language/bm/Languages;->b:Ljava/util/EnumMap;

    .line 22
    .line 23
    iget-object v6, v4, Lorg/apache/commons/codec/language/bm/NameType;->c:Ljava/lang/String;

    .line 24
    .line 25
    const-string v7, "org/apache/commons/codec/language/bm/"

    .line 26
    .line 27
    const-string v8, "_languages.txt"

    .line 28
    .line 29
    invoke-static {v7, v6, v8}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-instance v7, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v8, Ljava/util/Scanner;

    .line 39
    .line 40
    invoke-static {v6}, Lorg/apache/commons/codec/Resources;->a(Ljava/lang/String;)Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v9, "UTF-8"

    .line 45
    .line 46
    invoke-direct {v8, v6, v9}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    move v6, v2

    .line 50
    :cond_0
    :goto_2
    :try_start_0
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-eqz v9, :cond_3

    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    const-string v10, "*/"

    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_3

    .line 77
    :cond_1
    const-string v10, "/*"

    .line 78
    .line 79
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_2

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-lez v10, :cond_0

    .line 92
    .line 93
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    new-instance v6, Lorg/apache/commons/codec/language/bm/Languages;

    .line 98
    .line 99
    invoke-static {v7}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/language/bm/Languages;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :goto_3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :catchall_1
    move-exception v1

    .line 117
    :try_start_2
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :catchall_2
    move-exception v2

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :goto_4
    throw v1

    .line 126
    :cond_4
    new-instance v0, Lorg/apache/commons/codec/language/bm/Languages$1;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->c:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 132
    .line 133
    new-instance v0, Lorg/apache/commons/codec/language/bm/Languages$2;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->d:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 139
    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Languages;->a:Ljava/util/Set;

    .line 5
    .line 6
    return-void
.end method
