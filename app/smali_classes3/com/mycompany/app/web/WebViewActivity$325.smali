.class Lcom/mycompany/app/web/WebViewActivity$325;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$325;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$325;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->h4()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 14
    .line 15
    const/16 v2, 0x9

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->R:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    :cond_1
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 28
    .line 29
    sput-object p1, Lcom/mycompany/app/pref/PrefZtwo;->R:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefZtwo;->u(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->J0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
