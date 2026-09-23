.class Lcom/mycompany/app/dialog/DialogViewRead$80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogViewRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$80;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$80;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->s0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->w0:I

    .line 9
    .line 10
    const/16 v2, -0x4d2

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iput v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->w0:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->z0:Z

    .line 19
    .line 20
    iget v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->r0:I

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-ne v3, v4, :cond_2

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    iput v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->q0:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogViewRead;->F0(Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->x0:I

    .line 34
    .line 35
    iget v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y0:I

    .line 36
    .line 37
    iget v4, v0, Lcom/mycompany/app/dialog/DialogViewRead;->q0:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/mycompany/app/dialog/DialogViewRead;->B0(IIIZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
