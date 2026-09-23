.class Lcom/mycompany/app/dialog/DialogCreateAlbum$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCreateAlbum$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$7$1;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$7$1;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$7;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h1:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->z1:Ljava/lang/String;

    .line 16
    .line 17
    sput-object v1, Lcom/mycompany/app/pref/PrefPath;->j:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v4, 0x6

    .line 22
    const-string v5, "mAlbumPath"

    .line 23
    .line 24
    invoke-static {v4, v3, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/content/Intent;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 30
    .line 31
    const-class v4, Lcom/mycompany/app/main/list/MainListAlbum;

    .line 32
    .line 33
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "EXTRA_TYPE"

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->dismiss()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j1:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->D()V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogCreateAlbum$22;

    .line 70
    .line 71
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$22;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    new-instance v3, Lcom/mycompany/app/dialog/DialogCreateAlbum$19;

    .line 94
    .line 95
    invoke-direct {v3, v0, v2}, Lcom/mycompany/app/dialog/DialogCreateAlbum$19;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->K()V

    .line 103
    .line 104
    .line 105
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->A1:Z

    .line 106
    .line 107
    return-void
.end method
