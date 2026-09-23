.class Lcom/mycompany/app/dialog/DialogSetVideo$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo$14;->a:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetVideo;->v0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo$14;->a:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo$14;->a:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->a0:Lcom/mycompany/app/setting/SettingMedia;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->n0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    if-eqz p2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->n0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 23
    .line 24
    :cond_2
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->a0:Lcom/mycompany/app/setting/SettingMedia;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->a0:Lcom/mycompany/app/setting/SettingMedia;

    .line 33
    .line 34
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetVideo$15;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetVideo$15;-><init>(Lcom/mycompany/app/dialog/DialogSetVideo;)V

    .line 37
    .line 38
    .line 39
    const-string v4, "video/*"

    .line 40
    .line 41
    invoke-direct {v1, v2, v4, p2, v3}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->n0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 45
    .line 46
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetVideo$16;

    .line 47
    .line 48
    invoke-direct {p2, v0}, Lcom/mycompany/app/dialog/DialogSetVideo$16;-><init>(Lcom/mycompany/app/dialog/DialogSetVideo;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    .line 53
    .line 54
    return p1

    .line 55
    :cond_3
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->s0:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->t0:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->u0:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_5

    .line 78
    .line 79
    :cond_4
    const-string p2, ""

    .line 80
    .line 81
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->s0:Ljava/lang/String;

    .line 82
    .line 83
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->t0:Ljava/lang/String;

    .line 84
    .line 85
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->u0:Ljava/lang/String;

    .line 86
    .line 87
    :cond_5
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 88
    .line 89
    if-eqz p2, :cond_6

    .line 90
    .line 91
    const/4 v0, 0x4

    .line 92
    sget v1, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    .line 93
    .line 94
    invoke-virtual {p2, v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_0
    return p1
.end method
