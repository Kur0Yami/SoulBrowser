.class Lcom/mycompany/app/dialog/DialogMenuList$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$27;->a:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList$27;->a:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogMenuList;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x5

    .line 2
    rem-int/2addr p2, p1

    .line 3
    sget v0, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList$27;->a:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 14
    .line 15
    const-string v3, "mMenuType"

    .line 16
    .line 17
    invoke-static {v2, p1, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->c:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->d()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return v1
.end method
