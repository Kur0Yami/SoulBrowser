.class Lcom/mycompany/app/web/WebViewActivity$278;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(ILcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$278;->h:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$278;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/web/WebViewActivity$278;->f:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/web/WebViewActivity$278;->g:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$278;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v8

    .line 8
    iget v0, p0, Lcom/mycompany/app/web/WebViewActivity$278;->f:I

    .line 9
    .line 10
    add-int/lit8 v9, v0, -0x64

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$278;->h:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v4, v2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 17
    .line 18
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v6, v2, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/mycompany/app/web/WebViewActivity$278;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static/range {v2 .. v9}, Lcom/mycompany/app/main/MainUtil;->y7(Landroid/app/Activity;Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$278;->h:Lcom/mycompany/app/web/WebViewActivity;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$278;->g:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->e6(ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
