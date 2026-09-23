.class Lcom/mycompany/app/main/image/MainImagePreview$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$33;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/mycompany/app/web/WebNestView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$33;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->J0()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$33;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->J0()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/main/image/MainImagePreview;->D0(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p4, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object p4, p0, Lcom/mycompany/app/main/image/MainImagePreview$33;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {p4}, Lcom/mycompany/app/main/image/MainImagePreview;->J0()V

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p5, p4, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    if-eqz p5, :cond_3

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_2

    .line 24
    .line 25
    const-string p3, "blob:"

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    iget-object p3, p4, Lcom/mycompany/app/main/image/MainImagePreview;->F1:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p4}, Lcom/mycompany/app/main/image/MainImagePreview;->I0()V

    .line 39
    .line 40
    .line 41
    new-instance p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 42
    .line 43
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, p4, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p1, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p2, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 53
    .line 54
    iget-object p1, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p1, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p4, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 60
    .line 61
    sput-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 62
    .line 63
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 64
    .line 65
    iget-object p2, p4, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 66
    .line 67
    new-instance p5, Lcom/mycompany/app/main/image/MainImagePreview$37;

    .line 68
    .line 69
    invoke-direct {p5, p4}, Lcom/mycompany/app/main/image/MainImagePreview$37;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p4, p2, p3, p5}, Lcom/mycompany/app/dialog/DialogDownBlob;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p4, Lcom/mycompany/app/main/image/MainImagePreview;->F1:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 76
    .line 77
    new-instance p2, Lcom/mycompany/app/main/image/MainImagePreview$38;

    .line 78
    .line 79
    invoke-direct {p2, p4}, Lcom/mycompany/app/main/image/MainImagePreview$38;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-object p1, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    invoke-static {p4, p1, p2}, Lcom/mycompany/app/main/image/MainImagePreview;->w0(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    iput-object p1, p4, Lcom/mycompany/app/main/image/MainImagePreview;->B2:Ljava/lang/String;

    .line 94
    .line 95
    iput-object p2, p4, Lcom/mycompany/app/main/image/MainImagePreview;->C2:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 96
    .line 97
    iput p3, p4, Lcom/mycompany/app/main/image/MainImagePreview;->D2:I

    .line 98
    .line 99
    new-instance p1, Lcom/mycompany/app/main/image/MainImagePreview$70;

    .line 100
    .line 101
    invoke-direct {p1, p4}, Lcom/mycompany/app/main/image/MainImagePreview$70;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p4, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$33;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object p2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->G1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImagePreview;->O0()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreview;

    .line 24
    .line 25
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v6, Lcom/mycompany/app/main/image/MainImagePreview$39;

    .line 28
    .line 29
    invoke-direct {v6, v1}, Lcom/mycompany/app/main/image/MainImagePreview$39;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const-string v5, "image/*"

    .line 34
    .line 35
    move-object v2, p1

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogPreview;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->G1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 40
    .line 41
    new-instance p1, Lcom/mycompany/app/main/image/MainImagePreview$40;

    .line 42
    .line 43
    invoke-direct {p1, v1}, Lcom/mycompany/app/main/image/MainImagePreview$40;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
