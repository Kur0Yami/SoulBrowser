.class Lcom/mycompany/app/wview/WebAreaView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebAreaView$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaView$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView$4$1;->c:Lcom/mycompany/app/wview/WebAreaView$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView$4$1;->c:Lcom/mycompany/app/wview/WebAreaView$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/wview/WebAreaView$4;->c:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaView;->g:Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->O:Z

    .line 11
    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    sput-boolean v1, Lcom/mycompany/app/pref/PrefRead;->O:Z

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    const-string v4, "mAreaMulti"

    .line 21
    .line 22
    invoke-static {v3, v2, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebAreaView;->c()V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaView;->g:Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;->c()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/mycompany/app/wview/WebAreaView$4$1$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebAreaView$4$1$1;-><init>(Lcom/mycompany/app/wview/WebAreaView$4$1;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v2, 0xc8

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
