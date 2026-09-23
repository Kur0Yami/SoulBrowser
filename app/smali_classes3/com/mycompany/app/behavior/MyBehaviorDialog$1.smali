.class Lcom/mycompany/app/behavior/MyBehaviorDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/behavior/MyBehaviorDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$1;->g:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$1;->c:Landroid/view/View;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$1;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$1;->c:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$1;->f:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$1;->g:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->E(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
