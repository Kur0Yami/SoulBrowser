.class Lcom/mycompany/app/behavior/MyBehaviorDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/behavior/MyBehaviorDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;->f:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;->f:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;->c:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->e(I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method
