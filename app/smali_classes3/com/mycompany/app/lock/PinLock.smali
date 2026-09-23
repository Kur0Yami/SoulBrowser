.class public Lcom/mycompany/app/lock/PinLock;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/lock/PinLock$PinLockListener;
    }
.end annotation


# instance fields
.field public c:Lcom/mycompany/app/lock/PinLock$PinLockListener;

.field public f:[Lcom/mycompany/app/view/MyButtonText;

.field public g:Lcom/mycompany/app/view/MyButtonImage;

.field public h:Ljava/lang/String;


# virtual methods
.method public getInput()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setListener(Lcom/mycompany/app/lock/PinLock$PinLockListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/lock/PinLock;->c:Lcom/mycompany/app/lock/PinLock$PinLockListener;

    .line 2
    .line 3
    return-void
.end method
