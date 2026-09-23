.class Lcom/mycompany/app/main/image/MainImagePreview$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->W0()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->h()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 14
    .line 15
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->S0()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/image/MainImagePreview;->b1(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->h()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 14
    .line 15
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->F:Z

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget-object p1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->M0()V

    .line 34
    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 37
    .line 38
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ocr_trans_reload_1:I

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "\n"

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ocr_trans_reload_2:I

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v3, Lcom/mycompany/app/main/image/MainImagePreview$62;

    .line 75
    .line 76
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/image/MainImagePreview$62;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v0, p1, v1, v3}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 80
    .line 81
    .line 82
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 83
    .line 84
    new-instance p1, Lcom/mycompany/app/main/image/MainImagePreview$63;

    .line 85
    .line 86
    invoke-direct {p1, v0}, Lcom/mycompany/app/main/image/MainImagePreview$63;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->S0()V

    .line 94
    .line 95
    .line 96
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-static {v0, p1}, Lcom/mycompany/app/main/image/MainImagePreview;->E0(Lcom/mycompany/app/main/image/MainImagePreview;Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->c2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->P0()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 17
    .line 18
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->B:I

    .line 19
    .line 20
    new-instance v3, Lcom/mycompany/app/main/image/MainImagePreview$64;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/image/MainImagePreview$64;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v1, v0, v4, v2, v3}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->c2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$65;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$65;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 17
    .line 18
    :cond_1
    if-nez p1, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 27
    .line 28
    sget v2, Lnet/kaki87/soul2/testing/R$string;->color_white:I

    .line 29
    .line 30
    sget v3, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x1

    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    move v3, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move v3, v5

    .line 39
    :goto_1
    invoke-direct {v0, v5, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$string;->color_black:I

    .line 48
    .line 49
    sget v3, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 50
    .line 51
    if-ne v3, v6, :cond_4

    .line 52
    .line 53
    move v3, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move v3, v5

    .line 56
    :goto_2
    invoke-direct {v0, v6, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 63
    .line 64
    sget v2, Lnet/kaki87/soul2/testing/R$string;->automatic:I

    .line 65
    .line 66
    sget v3, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 67
    .line 68
    const/4 v7, 0x2

    .line 69
    if-ne v3, v7, :cond_5

    .line 70
    .line 71
    move v5, v6

    .line 72
    :cond_5
    invoke-direct {v0, v7, v2, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 79
    .line 80
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 81
    .line 82
    new-instance v6, Lcom/mycompany/app/main/image/MainImagePreview$67;

    .line 83
    .line 84
    invoke-direct {v6, v1}, Lcom/mycompany/app/main/image/MainImagePreview$67;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 85
    .line 86
    .line 87
    const/4 v5, 0x1

    .line 88
    move-object v3, p1

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 93
    .line 94
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 95
    .line 96
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 17
    .line 18
    :cond_1
    if-nez p1, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 27
    .line 28
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v5, 0x1

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    move v2, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move v2, v3

    .line 37
    :goto_1
    const-string v6, "Alphabet"

    .line 38
    .line 39
    invoke-direct {v0, v6, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 46
    .line 47
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 48
    .line 49
    if-ne v2, v5, :cond_4

    .line 50
    .line 51
    move v2, v5

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    move v2, v3

    .line 54
    :goto_2
    const-string v6, "Chinese"

    .line 55
    .line 56
    invoke-direct {v0, v6, v5, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 63
    .line 64
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    if-ne v2, v6, :cond_5

    .line 68
    .line 69
    move v2, v5

    .line 70
    goto :goto_3

    .line 71
    :cond_5
    move v2, v3

    .line 72
    :goto_3
    const-string v7, "Devanagari"

    .line 73
    .line 74
    invoke-direct {v0, v7, v6, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 81
    .line 82
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 83
    .line 84
    const/4 v6, 0x3

    .line 85
    if-ne v2, v6, :cond_6

    .line 86
    .line 87
    move v2, v5

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    move v2, v3

    .line 90
    :goto_4
    const-string v7, "Japanese"

    .line 91
    .line 92
    invoke-direct {v0, v7, v6, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 99
    .line 100
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 101
    .line 102
    const/4 v6, 0x4

    .line 103
    if-ne v2, v6, :cond_7

    .line 104
    .line 105
    move v2, v5

    .line 106
    goto :goto_5

    .line 107
    :cond_7
    move v2, v3

    .line 108
    :goto_5
    const-string v7, "Korean"

    .line 109
    .line 110
    invoke-direct {v0, v7, v6, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 117
    .line 118
    sget v2, Lnet/kaki87/soul2/testing/R$string;->automatic:I

    .line 119
    .line 120
    sget v6, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 121
    .line 122
    const/4 v7, 0x5

    .line 123
    if-ne v6, v7, :cond_8

    .line 124
    .line 125
    move v3, v5

    .line 126
    :cond_8
    invoke-direct {v0, v7, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 133
    .line 134
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 135
    .line 136
    new-instance v6, Lcom/mycompany/app/main/image/MainImagePreview$66;

    .line 137
    .line 138
    invoke-direct {v6, v1}, Lcom/mycompany/app/main/image/MainImagePreview$66;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 139
    .line 140
    .line 141
    const/4 v5, 0x1

    .line 142
    move-object v3, p1

    .line 143
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 147
    .line 148
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 149
    .line 150
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->N0()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_1:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "\n\n"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_2:I

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "\n"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_3:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v3, Lcom/mycompany/app/main/image/MainImagePreview$56;

    .line 65
    .line 66
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/image/MainImagePreview$56;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-direct {v2, v0, v1, v4, v3}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 71
    .line 72
    .line 73
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$57;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/image/MainImagePreview$57;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$50;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->X1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->R0()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 17
    .line 18
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$54;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$54;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v1, v0, v3, v2}, Lcom/mycompany/app/dialog/DialogTransLang;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->X1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 28
    .line 29
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$55;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$55;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
