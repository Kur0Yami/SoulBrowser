.class Lcom/mycompany/app/dialog/DialogEditShort$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditShort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditShort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort$3;->c:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort$3;->c:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->q0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->q0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 17
    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

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
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->A:Z

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZone;->A:Z

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 33
    .line 34
    const/16 v4, 0xf

    .line 35
    .line 36
    const-string v5, "mNotiShort"

    .line 37
    .line 38
    invoke-static {v4, v1, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->j0:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x8

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->j0:Landroid/view/View;

    .line 51
    .line 52
    :cond_3
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->r0:Landroid/net/Uri;

    .line 53
    .line 54
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->s0:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v9, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 62
    .line 63
    sget v2, Lnet/kaki87/soul2/testing/R$string;->default_image:I

    .line 64
    .line 65
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 75
    .line 76
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 86
    .line 87
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    new-instance v5, Lcom/mycompany/app/view/MyPopupMenu;

    .line 94
    .line 95
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 96
    .line 97
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditShort;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 98
    .line 99
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 100
    .line 101
    new-instance v11, Lcom/mycompany/app/dialog/DialogEditShort$15;

    .line 102
    .line 103
    invoke-direct {v11, v0}, Lcom/mycompany/app/dialog/DialogEditShort$15;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 104
    .line 105
    .line 106
    move-object v8, p1

    .line 107
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 108
    .line 109
    .line 110
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogEditShort;->q0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 111
    .line 112
    iput-object v5, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 113
    .line 114
    :cond_4
    :goto_0
    return-void
.end method
