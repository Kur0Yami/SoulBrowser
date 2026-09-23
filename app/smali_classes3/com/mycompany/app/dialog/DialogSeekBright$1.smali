.class Lcom/mycompany/app/dialog/DialogSeekBright$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekBright;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$1;->c:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekBright$1;->c:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->B0:I

    .line 9
    .line 10
    const v3, -0x1e240

    .line 11
    .line 12
    .line 13
    if-ne v2, v3, :cond_1

    .line 14
    .line 15
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->D3(Landroid/content/Context;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->B0:I

    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method
