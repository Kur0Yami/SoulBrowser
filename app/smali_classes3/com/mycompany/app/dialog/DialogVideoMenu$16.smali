.class Lcom/mycompany/app/dialog/DialogVideoMenu$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogVideoMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogVideoMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu$16;->c:Lcom/mycompany/app/dialog/DialogVideoMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu$16;->c:Lcom/mycompany/app/dialog/DialogVideoMenu;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogVideoMenu;->s:Z

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v0, v1, Lcom/mycompany/app/dialog/DialogVideoMenu;->r:F

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/mycompany/app/dialog/DialogVideoMenu;->b(Lcom/mycompany/app/dialog/DialogVideoMenu;F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
