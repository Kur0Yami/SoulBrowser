.class Lcom/mycompany/app/dialog/DialogTransLang$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainLangAdapter$MainLangListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTransLang;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$18;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$18;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->c0:Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->e0:Z

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    sget-object v0, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_6

    .line 30
    .line 31
    :cond_2
    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 33
    .line 34
    sput-object p2, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    const-string v1, "mNewsTitle"

    .line 50
    .line 51
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    const-string v1, "mNewsPick"

    .line 57
    .line 58
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_6

    .line 74
    .line 75
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 76
    .line 77
    const-string v0, ""

    .line 78
    .line 79
    sput-object v0, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefAlbum;->u(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    iget-object v2, v0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 92
    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_7

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    iget-object v2, v0, Lcom/mycompany/app/main/MainLangAdapter;->i:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v2, p2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_8

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter;->i:Ljava/lang/String;

    .line 112
    .line 113
    :cond_9
    :goto_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 114
    .line 115
    iget v2, p1, Lcom/mycompany/app/dialog/DialogTransLang;->f0:I

    .line 116
    .line 117
    invoke-static {v2, v0, v1, p2}, Lcom/mycompany/app/db/book/DbRecentLang;->j(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTransLang;->c0:Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;

    .line 121
    .line 122
    invoke-interface {p1, p2}, Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;->a(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$18;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->B0:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTransLang;->G(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
