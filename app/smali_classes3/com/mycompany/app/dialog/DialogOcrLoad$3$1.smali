.class Lcom/mycompany/app/dialog/DialogOcrLoad$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogOcrLoad$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$3$1;->c:Lcom/mycompany/app/dialog/DialogOcrLoad$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$3$1;->c:Lcom/mycompany/app/dialog/DialogOcrLoad$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogOcrLoad$3;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->i0:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;->b()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;->a()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOcrLoad;->dismiss()V

    .line 25
    .line 26
    .line 27
    :goto_1
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->j0:Z

    .line 29
    .line 30
    return-void
.end method
