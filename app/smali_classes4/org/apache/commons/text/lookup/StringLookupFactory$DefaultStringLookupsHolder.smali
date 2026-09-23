.class final Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/lookup/StringLookupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultStringLookupsHolder"
.end annotation


# static fields
.field public static final b:Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;-><init>(Ljava/util/Properties;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->b:Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "org.apache.commons.text.lookup.StringLookupFactory.defaultStringLookups"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    const-string v1, "[\\s,]+"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    array-length v2, v1

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v2, :cond_2

    .line 30
    .line 31
    aget-object v4, v1, v3

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Lorg/apache/commons/text/lookup/DefaultStringLookup;->valueOf(Ljava/lang/String;)Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v2, "Invalid default string lookups definition: "

    .line 59
    .line 60
    invoke-static {v2, p1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->g:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 74
    .line 75
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->h:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 79
    .line 80
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->i:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 84
    .line 85
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->j:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 89
    .line 90
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->k:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 94
    .line 95
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 96
    .line 97
    .line 98
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->l:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 99
    .line 100
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->m:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 104
    .line 105
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->n:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 109
    .line 110
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->o:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 114
    .line 115
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->p:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 119
    .line 120
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->q:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 124
    .line 125
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 126
    .line 127
    .line 128
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->r:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 129
    .line 130
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 131
    .line 132
    .line 133
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->s:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 134
    .line 135
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 136
    .line 137
    .line 138
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->t:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 139
    .line 140
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->u:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 144
    .line 145
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->v:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 149
    .line 150
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 151
    .line 152
    .line 153
    sget-object p1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->w:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 154
    .line 155
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iput-object p1, p0, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->a:Ljava/util/Map;

    .line 163
    .line 164
    return-void
.end method

.method public static a(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->f:Lorg/apache/commons/text/lookup/StringLookup;

    .line 10
    .line 11
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->g:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string p0, "base64"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
