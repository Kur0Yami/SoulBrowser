.class Lcom/mycompany/app/dialog/DialogMenuList$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$16;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList$16;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogMenuList$17;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogMenuList$17;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
