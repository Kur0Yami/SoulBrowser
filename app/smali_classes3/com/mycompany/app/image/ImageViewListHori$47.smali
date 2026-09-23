.class Lcom/mycompany/app/image/ImageViewListHori$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$47;->a:Lcom/mycompany/app/image/ImageViewListHori;

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
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$47;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->j0()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

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
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$47;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->j0()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/image/ImageViewListHori;->W(Lcom/mycompany/app/image/ImageViewListHori;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/mycompany/app/image/ImageViewListHori$47;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {p4}, Lcom/mycompany/app/image/ImageViewListHori;->j0()V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p5, p4, Lcom/mycompany/app/image/ImageViewListHori;->C:Lcom/mycompany/app/compress/Compress;

    .line 10
    .line 11
    if-nez p5, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget p6, p4, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    .line 15
    .line 16
    invoke-virtual {p5, p6}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    iget-object p6, p4, Lcom/mycompany/app/image/ImageViewListHori;->C:Lcom/mycompany/app/compress/Compress;

    .line 21
    .line 22
    invoke-virtual {p6, p5}, Lcom/mycompany/app/compress/Compress;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p6

    .line 30
    if-eqz p6, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iput-object p5, p4, Lcom/mycompany/app/image/ImageViewListHori;->o1:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p1, p4, Lcom/mycompany/app/image/ImageViewListHori;->p1:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p4, Lcom/mycompany/app/image/ImageViewListHori;->q1:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 38
    .line 39
    iput p3, p4, Lcom/mycompany/app/image/ImageViewListHori;->r1:I

    .line 40
    .line 41
    iget-object p3, p4, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 42
    .line 43
    if-nez p3, :cond_5

    .line 44
    .line 45
    :goto_0
    iget-object p3, p4, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {p3}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    if-nez p3, :cond_3

    .line 52
    .line 53
    iget-object p1, p4, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 54
    .line 55
    sget p2, Lnet/kaki87/soul2/testing/R$string;->down_fail:I

    .line 56
    .line 57
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    iget-object p5, p4, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 62
    .line 63
    if-nez p5, :cond_4

    .line 64
    .line 65
    :goto_1
    return-void

    .line 66
    :cond_4
    invoke-virtual {p5}, Lcom/mycompany/app/image/ImageViewActivity;->u0()V

    .line 67
    .line 68
    .line 69
    iget-object p4, p4, Lcom/mycompany/app/image/ImageViewListHori;->l:Ljava/lang/String;

    .line 70
    .line 71
    const/4 p5, 0x0

    .line 72
    invoke-virtual {p3, p1, p4, p2, p5}, Lcom/mycompany/app/main/MainApp;->R(Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;Z)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    new-instance p1, Lcom/mycompany/app/image/ImageViewListHori$82;

    .line 77
    .line 78
    invoke-direct {p1, p4}, Lcom/mycompany/app/image/ImageViewListHori$82;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
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
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewListHori$47;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object p3, p2, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p3, p2, Lcom/mycompany/app/image/ImageViewListHori;->q0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/mycompany/app/image/ImageViewListHori;->s0()V

    .line 14
    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    invoke-virtual {p2, p3}, Lcom/mycompany/app/image/ImageViewListHori;->h0(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreview;

    .line 21
    .line 22
    iget-object v1, p2, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 23
    .line 24
    iget-object v3, p2, Lcom/mycompany/app/image/ImageViewListHori;->l:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v6, Lcom/mycompany/app/image/ImageViewListHori$51;

    .line 27
    .line 28
    invoke-direct {v6, p2}, Lcom/mycompany/app/image/ImageViewListHori$51;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const-string v5, "image/*"

    .line 33
    .line 34
    move-object v2, p1

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogPreview;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p2, Lcom/mycompany/app/image/ImageViewListHori;->q0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 39
    .line 40
    new-instance p1, Lcom/mycompany/app/image/ImageViewListHori$52;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/mycompany/app/image/ImageViewListHori$52;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
