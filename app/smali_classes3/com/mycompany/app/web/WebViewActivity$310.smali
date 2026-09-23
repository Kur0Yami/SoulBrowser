.class Lcom/mycompany/app/web/WebViewActivity$310;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$310;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$310;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->L4()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$310;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->t2:Lcom/mycompany/app/view/MyIconView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 9
    .line 10
    if-ne v1, p1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 14
    .line 15
    sput-object p3, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 16
    .line 17
    sput p2, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 18
    .line 19
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefZtwo;->v(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->t2:Lcom/mycompany/app/view/MyIconView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyIconView;->w()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
