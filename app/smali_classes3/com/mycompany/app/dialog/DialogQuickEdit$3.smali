.class Lcom/mycompany/app/dialog/DialogQuickEdit$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogQuickEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$3;->c:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$3;->c:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->B0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 15
    .line 16
    .line 17
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->B0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 18
    .line 19
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 20
    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->m:Z

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    sput-boolean v3, Lcom/mycompany/app/pref/PrefAlbum;->m:Z

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 34
    .line 35
    const-string v4, "mNotiQuick"

    .line 36
    .line 37
    invoke-static {v3, v1, v4, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->t0:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    const/16 v4, 0x8

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->t0:Landroid/view/View;

    .line 50
    .line 51
    :cond_4
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->C0:Landroid/net/Uri;

    .line 52
    .line 53
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->D0:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v9, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 65
    .line 66
    sget v2, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    .line 67
    .line 68
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 76
    .line 77
    sget v2, Lnet/kaki87/soul2/testing/R$string;->web_title:I

    .line 78
    .line 79
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 89
    .line 90
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 100
    .line 101
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 108
    .line 109
    const/4 v2, 0x3

    .line 110
    sget v3, Lnet/kaki87/soul2/testing/R$string;->color_title:I

    .line 111
    .line 112
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v5, Lcom/mycompany/app/view/MyPopupMenu;

    .line 119
    .line 120
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 121
    .line 122
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 123
    .line 124
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 125
    .line 126
    new-instance v11, Lcom/mycompany/app/dialog/DialogQuickEdit$13;

    .line 127
    .line 128
    invoke-direct {v11, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$13;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 129
    .line 130
    .line 131
    move-object v8, p1

    .line 132
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 133
    .line 134
    .line 135
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->B0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 136
    .line 137
    iput-object v5, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 138
    .line 139
    :cond_6
    :goto_1
    return-void
.end method
