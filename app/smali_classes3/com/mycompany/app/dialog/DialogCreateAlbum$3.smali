.class Lcom/mycompany/app/dialog/DialogCreateAlbum$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCreateAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$3;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$3;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 17
    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->l:Z

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    sput-boolean v3, Lcom/mycompany/app/pref/PrefAlbum;->l:Z

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 33
    .line 34
    const-string v4, "mNotiIcon"

    .line 35
    .line 36
    invoke-static {v3, v1, v4, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->i0:Landroid/view/View;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const/16 v4, 0x8

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->i0:Landroid/view/View;

    .line 49
    .line 50
    :cond_3
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t1:Landroid/net/Uri;

    .line 51
    .line 52
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->u1:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v9, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 60
    .line 61
    sget v2, Lnet/kaki87/soul2/testing/R$string;->default_image:I

    .line 62
    .line 63
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 73
    .line 74
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 84
    .line 85
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v5, Lcom/mycompany/app/view/MyPopupMenu;

    .line 92
    .line 93
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 94
    .line 95
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 96
    .line 97
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 98
    .line 99
    new-instance v11, Lcom/mycompany/app/dialog/DialogCreateAlbum$17;

    .line 100
    .line 101
    invoke-direct {v11, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$17;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 102
    .line 103
    .line 104
    move-object v8, p1

    .line 105
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 106
    .line 107
    .line 108
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 109
    .line 110
    iput-object v5, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 111
    .line 112
    :cond_4
    :goto_0
    return-void
.end method
