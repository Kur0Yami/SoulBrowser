.class Lcom/mycompany/app/web/WebViewActivity$345;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$345;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$345;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ij:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ij:Ljava/lang/String;

    .line 7
    .line 8
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 9
    .line 10
    xor-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v3, v2}, Lcom/mycompany/app/db/book/DbBookTab;->d(Landroid/content/Context;Z)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v5, v4

    .line 27
    :goto_0
    new-instance v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookTab;->f(Ljava/util/List;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    iput-wide v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 37
    .line 38
    invoke-static {v5, v3}, Lcom/mycompany/app/db/book/DbBookTab;->j(ILjava/util/List;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    iput-wide v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 43
    .line 44
    iput v5, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 45
    .line 46
    iput-object v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v1, v6}, Lcom/mycompany/app/web/WebViewActivity;->q3(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 55
    .line 56
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->j:Z

    .line 57
    .line 58
    iput-boolean v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v1, v6, v2}, Lcom/mycompany/app/db/book/DbBookTab;->o(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Z)V

    .line 63
    .line 64
    .line 65
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    sput v5, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    sput v5, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 73
    .line 74
    :goto_1
    if-nez v1, :cond_5

    .line 75
    .line 76
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 77
    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    move v1, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 83
    .line 84
    :goto_2
    if-eqz v1, :cond_5

    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/mycompany/app/pref/PrefSync;->v(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 92
    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 97
    .line 98
    :goto_3
    if-nez v4, :cond_4

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "EXTRA_TYPE"

    .line 108
    .line 109
    const/4 v3, 0x2

    .line 110
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    const/4 v2, 0x3

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->l8(Z)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
