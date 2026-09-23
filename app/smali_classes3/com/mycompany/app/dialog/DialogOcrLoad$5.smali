.class Lcom/mycompany/app/dialog/DialogOcrLoad$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogOcrLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$5;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$5;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->i0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;->c()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method
