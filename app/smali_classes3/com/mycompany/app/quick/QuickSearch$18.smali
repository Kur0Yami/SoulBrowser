.class Lcom/mycompany/app/quick/QuickSearch$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$18;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/quick/QuickSearch;->f0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$18;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->i()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$18;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-ne p2, v1, :cond_2

    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const/4 p2, 0x0

    .line 18
    :goto_0
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 19
    .line 20
    if-ne v0, p2, :cond_3

    .line 21
    .line 22
    :goto_1
    return v1

    .line 23
    :cond_3
    sput p2, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 26
    .line 27
    const/16 v2, 0x11

    .line 28
    .line 29
    const-string v3, "mQckSchType"

    .line 30
    .line 31
    invoke-static {v0, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lcom/mycompany/app/quick/QuickSearch$18$1;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/mycompany/app/quick/QuickSearch$18$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$18;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v2, 0x12c

    .line 46
    .line 47
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    return v1
.end method
