.class Lcom/mycompany/app/web/WebViewActivity$323;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$323;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$323;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->f4()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 14
    .line 15
    if-ne v1, p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 21
    .line 22
    const/16 v2, 0x10

    .line 23
    .line 24
    const-string v3, "mNewsLang2"

    .line 25
    .line 26
    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Lcom/mycompany/app/quick/QuickView;->g(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method
