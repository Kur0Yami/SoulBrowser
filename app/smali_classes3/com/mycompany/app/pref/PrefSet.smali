.class public Lcom/mycompany/app/pref/PrefSet;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefAlbum;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefAlbum;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    const/4 v1, 0x2

    .line 18
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefFloat;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefFloat;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_2
    const/4 v1, 0x3

    .line 26
    if-ne p1, v1, :cond_3

    .line 27
    .line 28
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefImage;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_3
    const/4 v1, 0x4

    .line 34
    if-ne p1, v1, :cond_4

    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_4
    const/4 v1, 0x5

    .line 42
    if-ne p1, v1, :cond_5

    .line 43
    .line 44
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefMain;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_5
    const/4 v1, 0x6

    .line 50
    if-ne p1, v1, :cond_6

    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefPath;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPath;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_6
    const/4 v1, 0x7

    .line 58
    if-ne p1, v1, :cond_7

    .line 59
    .line 60
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_7
    const/16 v1, 0x8

    .line 66
    .line 67
    if-ne p1, v1, :cond_8

    .line 68
    .line 69
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefRead;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefRead;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_8
    const/16 v1, 0x9

    .line 75
    .line 76
    if-ne p1, v1, :cond_9

    .line 77
    .line 78
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefSecret;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSecret;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_9
    const/16 v1, 0xa

    .line 84
    .line 85
    if-ne p1, v1, :cond_a

    .line 86
    .line 87
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefSub;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefSub;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_a
    const/16 v1, 0xb

    .line 93
    .line 94
    if-ne p1, v1, :cond_b

    .line 95
    .line 96
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_b
    const/16 v1, 0xc

    .line 102
    .line 103
    if-ne p1, v1, :cond_c

    .line 104
    .line 105
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_c
    const/16 v1, 0xd

    .line 111
    .line 112
    if-ne p1, v1, :cond_d

    .line 113
    .line 114
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefVideo;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefVideo;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :cond_d
    const/16 v1, 0xe

    .line 120
    .line 121
    if-ne p1, v1, :cond_e

    .line 122
    .line 123
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :cond_e
    const/16 v1, 0xf

    .line 129
    .line 130
    if-ne p1, v1, :cond_f

    .line 131
    .line 132
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :cond_f
    const/16 v1, 0x10

    .line 138
    .line 139
    if-ne p1, v1, :cond_10

    .line 140
    .line 141
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :cond_10
    const/16 v0, 0x11

    .line 147
    .line 148
    if-ne p1, v0, :cond_11

    .line 149
    .line 150
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :cond_11
    const/4 p0, 0x0

    .line 156
    return-object p0
.end method

.method public static b(IJLandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p3, p0}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/mycompany/app/pref/PrefCore;->o(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static d(ILandroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static e(Landroid/content/Context;F)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "mYouSpdRate"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static f(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static g(ILandroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "mUriDown"

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static i(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static j(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefSet;->a(Landroid/content/Context;I)Lcom/mycompany/app/pref/PrefCore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
