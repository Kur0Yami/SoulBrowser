.class Lcom/mycompany/app/dialog/DialogTabMain$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$27;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->n:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$27;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->n:Z

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 11
    .line 12
    const-string v2, "mGuideTab"

    .line 13
    .line 14
    invoke-static {p1, v1, v2, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->m0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
