.class Lcom/mycompany/app/wview/WebAreaView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebAreaView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView$3;->c:Lcom/mycompany/app/wview/WebAreaView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView$3;->c:Lcom/mycompany/app/wview/WebAreaView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebAreaView;->C:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebAreaView;->o:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p1, Lcom/mycompany/app/wview/WebAreaView;->o:Z

    .line 15
    .line 16
    iget-object v0, p1, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->K:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/mycompany/app/pref/PrefRead;->K:Z

    .line 27
    .line 28
    iget-object v1, p1, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    const-string v3, "mNotiAre4"

    .line 33
    .line 34
    invoke-static {v2, v1, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p1, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 40
    .line 41
    .line 42
    :cond_3
    new-instance v0, Lcom/mycompany/app/wview/WebAreaView$3$1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaView$3$1;-><init>(Lcom/mycompany/app/wview/WebAreaView$3;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method
