.class Lcom/mycompany/app/lock/PassActivity$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PassActivity$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PassActivity$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PassActivity$12$1;->c:Lcom/mycompany/app/lock/PassActivity$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity$12$1;->c:Lcom/mycompany/app/lock/PassActivity$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/lock/PassActivity$12;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->c8(Landroid/content/Context;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method
