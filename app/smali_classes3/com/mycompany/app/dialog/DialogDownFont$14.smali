.class Lcom/mycompany/app/dialog/DialogDownFont$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$14;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$14;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownFont;->z0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->l:J

    .line 9
    .line 10
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogDownFont$14;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogDownFont;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p2, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p2, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 15
    .line 16
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogDownFont;->A0:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogDownFont;->z0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 19
    .line 20
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogDownFont;->B0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogDownFont;->F()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p2, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownFont$14$1;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownFont$14$1;-><init>(Lcom/mycompany/app/dialog/DialogDownFont$14;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$14;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 15
    .line 16
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->A0:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->z0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 19
    .line 20
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->B0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownFont;->F()V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFont$14$2;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownFont$14$2;-><init>(Lcom/mycompany/app/dialog/DialogDownFont$14;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
