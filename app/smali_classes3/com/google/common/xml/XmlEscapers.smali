.class public Lcom/google/common/xml/XmlEscapers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/escape/Escapers$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/escape/Escapers$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0xfffd

    .line 7
    .line 8
    .line 9
    iput-char v1, v0, Lcom/google/common/escape/Escapers$Builder;->b:C

    .line 10
    .line 11
    const-string v1, "\ufffd"

    .line 12
    .line 13
    iput-object v1, v0, Lcom/google/common/escape/Escapers$Builder;->c:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    const/16 v3, 0x1f

    .line 17
    .line 18
    const/16 v4, 0xd

    .line 19
    .line 20
    const/16 v5, 0xa

    .line 21
    .line 22
    const/16 v6, 0x9

    .line 23
    .line 24
    iget-object v7, v0, Lcom/google/common/escape/Escapers$Builder;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    if-gt v2, v3, :cond_1

    .line 27
    .line 28
    if-eq v2, v6, :cond_0

    .line 29
    .line 30
    if-eq v2, v5, :cond_0

    .line 31
    .line 32
    if-eq v2, v4, :cond_0

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    int-to-char v2, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v1, "&amp;"

    .line 46
    .line 47
    const/16 v2, 0x26

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v1, "&lt;"

    .line 57
    .line 58
    const/16 v2, 0x3c

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string v1, "&gt;"

    .line 68
    .line 69
    const/16 v2, 0x3e

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$Builder;->a()V

    .line 79
    .line 80
    .line 81
    const-string v1, "&apos;"

    .line 82
    .line 83
    const/16 v2, 0x27

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v1, "&quot;"

    .line 93
    .line 94
    const/16 v2, 0x22

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const-string v1, "&#x9;"

    .line 104
    .line 105
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v1, "&#xA;"

    .line 113
    .line 114
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const-string v1, "&#xD;"

    .line 122
    .line 123
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$Builder;->a()V

    .line 131
    .line 132
    .line 133
    return-void
.end method
