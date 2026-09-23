.class Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/behavior/MyBehaviorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettleRunnable"
.end annotation


# instance fields
.field public final c:Landroid/view/View;

.field public f:Z

.field public g:I

.field public final synthetic h:Lcom/mycompany/app/behavior/MyBehaviorDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->h:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->c:Landroid/view/View;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->g:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->h:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->c:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->g:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->f:Z

    .line 26
    .line 27
    return-void
.end method
