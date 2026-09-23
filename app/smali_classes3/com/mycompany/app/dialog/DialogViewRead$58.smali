.class Lcom/mycompany/app/dialog/DialogViewRead$58;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$58;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$58;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->p0:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->q0:I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->F0(Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1, v1, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->E0(IZ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$58;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->E0(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onRangeStart(Ljava/lang/String;III)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$58;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget p4, p1, Lcom/mycompany/app/dialog/DialogViewRead;->t0:I

    .line 4
    .line 5
    add-int v0, p4, p2

    .line 6
    .line 7
    iput v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->x0:I

    .line 8
    .line 9
    add-int/2addr p4, p3

    .line 10
    iput p4, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y0:I

    .line 11
    .line 12
    iput p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->u0:I

    .line 13
    .line 14
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->z0:Z

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->q0:I

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-virtual {p1, v0, p4, p2, p3}, Lcom/mycompany/app/dialog/DialogViewRead;->B0(IIIZ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$58;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->r0:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->E0(IZ)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x2

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->d0(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->h0:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead$58$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewRead$58$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$58;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v1, 0x64

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
