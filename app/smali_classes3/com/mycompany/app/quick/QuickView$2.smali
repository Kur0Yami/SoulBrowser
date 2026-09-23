.class Lcom/mycompany/app/quick/QuickView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$2;->c:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$2;->c:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->h0:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->h0:Z

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 16
    .line 17
    const/16 v3, 0x11

    .line 18
    .line 19
    const-string v4, "mNotiQmenu2"

    .line 20
    .line 21
    invoke-static {v3, v2, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->A:Z

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->s(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
