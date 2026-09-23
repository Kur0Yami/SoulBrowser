.class Lcom/mycompany/app/lock/PinLock$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PinLock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PinLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PinLock$2;->c:Lcom/mycompany/app/lock/PinLock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/PinLock$2;->c:Lcom/mycompany/app/lock/PinLock;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/lock/PinLock;->c:Lcom/mycompany/app/lock/PinLock$PinLockListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v2, v1, v0}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/mycompany/app/lock/PinLock;->c:Lcom/mycompany/app/lock/PinLock$PinLockListener;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/mycompany/app/lock/PinLock$PinLockListener;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
