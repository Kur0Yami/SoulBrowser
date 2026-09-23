.class public Lorg/apache/commons/codec/language/bm/PhoneticEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;,
        Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 18

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
    new-instance v1, Ljava/util/HashSet;

    .line 9
    .line 10
    const-string v6, "van"

    .line 11
    .line 12
    const-string v7, "von"

    .line 13
    .line 14
    const-string v2, "bar"

    .line 15
    .line 16
    const-string v3, "ben"

    .line 17
    .line 18
    const-string v4, "da"

    .line 19
    .line 20
    const-string v5, "de"

    .line 21
    .line 22
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lorg/apache/commons/codec/language/bm/NameType;->f:Lorg/apache/commons/codec/language/bm/NameType;

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/util/HashSet;

    .line 43
    .line 44
    const-string v16, "van"

    .line 45
    .line 46
    const-string v17, "von"

    .line 47
    .line 48
    const-string v2, "al"

    .line 49
    .line 50
    const-string v3, "el"

    .line 51
    .line 52
    const-string v4, "da"

    .line 53
    .line 54
    const-string v5, "dal"

    .line 55
    .line 56
    const-string v6, "de"

    .line 57
    .line 58
    const-string v7, "del"

    .line 59
    .line 60
    const-string v8, "dela"

    .line 61
    .line 62
    const-string v9, "de la"

    .line 63
    .line 64
    const-string v10, "della"

    .line 65
    .line 66
    const-string v11, "des"

    .line 67
    .line 68
    const-string v12, "di"

    .line 69
    .line 70
    const-string v13, "do"

    .line 71
    .line 72
    const-string v14, "dos"

    .line 73
    .line 74
    const-string v15, "du"

    .line 75
    .line 76
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget-object v2, Lorg/apache/commons/codec/language/bm/NameType;->h:Lorg/apache/commons/codec/language/bm/NameType;

    .line 92
    .line 93
    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    new-instance v1, Ljava/util/HashSet;

    .line 97
    .line 98
    const-string v14, "van"

    .line 99
    .line 100
    const-string v15, "von"

    .line 101
    .line 102
    const-string v2, "da"

    .line 103
    .line 104
    const-string v3, "dal"

    .line 105
    .line 106
    const-string v4, "de"

    .line 107
    .line 108
    const-string v5, "del"

    .line 109
    .line 110
    const-string v6, "dela"

    .line 111
    .line 112
    const-string v7, "de la"

    .line 113
    .line 114
    const-string v8, "della"

    .line 115
    .line 116
    const-string v9, "des"

    .line 117
    .line 118
    const-string v10, "di"

    .line 119
    .line 120
    const-string v11, "do"

    .line 121
    .line 122
    const-string v12, "dos"

    .line 123
    .line 124
    const-string v13, "du"

    .line 125
    .line 126
    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sget-object v2, Lorg/apache/commons/codec/language/bm/NameType;->g:Lorg/apache/commons/codec/language/bm/NameType;

    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    return-void
.end method
