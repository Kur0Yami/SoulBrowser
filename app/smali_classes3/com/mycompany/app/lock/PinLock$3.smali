.class Lcom/mycompany/app/lock/PinLock$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/lock/PinLock$3;->c:Lcom/mycompany/app/lock/PinLock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/PinLock$3;->c:Lcom/mycompany/app/lock/PinLock;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/lock/PinLock;->c:Lcom/mycompany/app/lock/PinLock$PinLockListener;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/mycompany/app/lock/PinLock;->c:Lcom/mycompany/app/lock/PinLock$PinLockListener;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/mycompany/app/lock/PinLock$PinLockListener;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v1
.end method
