.class Lcom/mycompany/app/wview/WebAreaMenu$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebAreaMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu$12;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu$12;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebAreaMenu;->d()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
