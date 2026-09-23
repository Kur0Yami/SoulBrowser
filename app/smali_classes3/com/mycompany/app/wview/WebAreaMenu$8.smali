.class Lcom/mycompany/app/wview/WebAreaMenu$8;
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
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu$8;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu$8;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
