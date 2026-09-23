.class Lcom/mycompany/app/lock/PinLock$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/lock/PinLock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PinLock;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PinLock$1;->f:Lcom/mycompany/app/lock/PinLock;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/lock/PinLock$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/PinLock$1;->f:Lcom/mycompany/app/lock/PinLock;

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
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 15
    .line 16
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/mycompany/app/lock/PinLock$1;->c:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x4

    .line 40
    if-le v1, v2, :cond_2

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_2
    iput-object v0, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/mycompany/app/lock/PinLock;->c:Lcom/mycompany/app/lock/PinLock$PinLockListener;

    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/mycompany/app/lock/PinLock$PinLockListener;->a(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
