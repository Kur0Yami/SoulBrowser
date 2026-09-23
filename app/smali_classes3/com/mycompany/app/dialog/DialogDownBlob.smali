.class public Lcom/mycompany/app/dialog/DialogDownBlob;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;,
        Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;
    }
.end annotation


# static fields
.field public static final synthetic y0:I


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyRoundImage;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Lcom/mycompany/app/view/MyLineLinear;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyProgressBar;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Landroid/webkit/WebView;

.field public l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public m0:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o0:J

.field public p0:Ljava/io/OutputStream;

.field public q0:[Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

.field public r0:I

.field public s0:I

.field public t0:J

.field public u0:I

.field public v0:I

.field public w0:Z

.field public x0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->b0:Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->k0:Landroid/webkit/WebView;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 15
    .line 16
    iget-object p1, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->m0:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownBlob$1;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownBlob$1;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogDownBlob;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->v0:I

    .line 7
    .line 8
    iget v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->u0:I

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    iput v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->v0:I

    .line 13
    .line 14
    :cond_1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->v0:I

    .line 15
    .line 16
    iget v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->s0:I

    .line 17
    .line 18
    mul-int/2addr v0, v1

    .line 19
    int-to-long v0, v0

    .line 20
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->t0:J

    .line 21
    .line 22
    cmp-long v4, v0, v2

    .line 23
    .line 24
    if-lez v4, :cond_2

    .line 25
    .line 26
    move-wide v0, v2

    .line 27
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 33
    .line 34
    .line 35
    const-string v0, " / "

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-wide v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->t0:J

    .line 41
    .line 42
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->i0:Lcom/mycompany/app/view/MyProgressBar;

    .line 55
    .line 56
    iget p0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->v0:I

    .line 57
    .line 58
    int-to-float p0, p0

    .line 59
    invoke-virtual {v0, p0}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->x0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->x0:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->k0:Landroid/webkit/WebView;

    .line 9
    .line 10
    const-string v2, "var sbblb=document.getElementById(\'sb_down_blob\');if(sbblb){document.body.removeChild(sbblb);}if(xhr){xhr.abort();xhr=null;}"

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->w0:Z

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 41
    .line 42
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const v1, -0x7f7f80

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const v1, -0x252526

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownBlob;->dismiss()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final D(IIILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->r0:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->r0:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->q0:[Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

    .line 13
    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    const/high16 v0, 0x200000

    .line 17
    .line 18
    if-le v0, p2, :cond_1

    .line 19
    .line 20
    move v0, p2

    .line 21
    :cond_1
    div-int v1, p2, v0

    .line 22
    .line 23
    rem-int v2, p2, v0

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    :cond_2
    iput v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->s0:I

    .line 30
    .line 31
    int-to-long v2, p2

    .line 32
    iput-wide v2, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->t0:J

    .line 33
    .line 34
    iput v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->u0:I

    .line 35
    .line 36
    new-array p2, v1, [Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->q0:[Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    :goto_0
    if-ge p2, v1, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->q0:[Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

    .line 44
    .line 45
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    aput-object v2, v0, p2

    .line 51
    .line 52
    add-int/lit8 p2, p2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 56
    .line 57
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownBlob$7;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownBlob$7;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->q0:[Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

    .line 66
    .line 67
    aget-object p2, p2, p3

    .line 68
    .line 69
    iput-object p4, p2, Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;->a:Ljava/lang/String;

    .line 70
    .line 71
    iput p1, p2, Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;->b:I

    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->w0:Z

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    :goto_1
    return-void

    .line 78
    :cond_5
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownBlob$8;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogDownBlob$8;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownBlob;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->p0:Ljava/io/OutputStream;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->p0:Ljava/io/OutputStream;

    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->f0:Lcom/mycompany/app/view/MyLineLinear;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->f0:Lcom/mycompany/app/view/MyLineLinear;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->i0:Lcom/mycompany/app/view/MyProgressBar;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->i0:Lcom/mycompany/app/view/MyProgressBar;

    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 64
    .line 65
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->b0:Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->k0:Landroid/webkit/WebView;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->m0:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownBlob;->q0:[Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

    .line 84
    .line 85
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 86
    .line 87
    .line 88
    return-void
.end method
