.class Lcom/mycompany/app/wview/WebAreaMenu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu$5;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu$5;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebAreaMenu;->m:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p1, Lcom/mycompany/app/wview/WebAreaMenu;->m:Z

    .line 15
    .line 16
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$5$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$5$1;-><init>(Lcom/mycompany/app/wview/WebAreaMenu$5;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
