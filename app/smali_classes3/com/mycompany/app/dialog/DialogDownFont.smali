.class public Lcom/mycompany/app/dialog/DialogDownFont;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic C0:I


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Ljava/util/ArrayList;

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public final h0:Z

.field public i0:Lcom/mycompany/app/view/MyAdFrame;

.field public j0:Lcom/mycompany/app/view/MyAdNative;

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public n0:Lcom/mycompany/app/view/MyRoundLinear;

.field public o0:Lcom/mycompany/app/view/MyLineFrame;

.field public p0:Landroid/widget/ImageView;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Lcom/mycompany/app/view/MyRecyclerView;

.field public s0:Lcom/mycompany/app/main/MainDownAdapter;

.field public t0:Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

.field public u0:Lcom/mycompany/app/dialog/DialogDownLink;

.field public v0:Z

.field public w0:Z

.field public x0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

.field public y0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

.field public z0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogVideoList$VideoListListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogDownFont;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownFont;->d0:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownFont;->e0:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogDownFont;->h0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownFont$1;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownFont$1;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogDownFont;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    const-string p0, "\"filename\""

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, -0x1

    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    add-int/lit8 p0, p0, 0xb

    .line 19
    .line 20
    const/16 v1, 0x22

    .line 21
    .line 22
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-ne p0, v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v0, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, ".ttf"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    const-string p1, ".otf"

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/16 p1, 0x2f

    .line 64
    .line 65
    const/16 v0, 0x2d

    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object p0

    .line 72
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogDownFont;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    const-string p0, "\"url\""

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, -0x1

    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    add-int/lit8 p0, p0, 0x6

    .line 19
    .line 20
    const/16 v1, 0x22

    .line 21
    .line 22
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-ne p0, v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v0, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return-object p0

    .line 54
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogDownFont;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->k0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->l0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->m0:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->m0:Z

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownFont$6;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownFont$6;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownFont;->F()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->t0:Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->t0:Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 30
    .line 31
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->n0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->n0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 39
    .line 40
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 48
    .line 49
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 57
    .line 58
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->s0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainDownAdapter;->x()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->s0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 66
    .line 67
    :cond_6
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->b0:Landroid/content/Context;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->d0:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->e0:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->f0:Ljava/util/ArrayList;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->p0:Landroid/widget/ImageView;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->u0:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownLink;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->u0:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->z0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 12
    .line 13
    return-void
.end method

.method public final G(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :cond_1
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p1, :cond_5

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogDownFont;->G(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 25
    .line 26
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const v1, -0xdededf

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, -0x1

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyAdNative;->setDarkMode(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogDownFont;->G(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->w0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->w0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownFont;->E()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownFont$8;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownFont$8;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
