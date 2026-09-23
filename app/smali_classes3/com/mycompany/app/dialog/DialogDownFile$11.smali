.class Lcom/mycompany/app/dialog/DialogDownFile$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFile;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$11;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile$11;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :goto_0
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogDownFile;->C(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
