.class Lcom/mycompany/app/widget/WidgetSearchActivity$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/widget/WidgetSearchActivity$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$8;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$8$1;->f:Lcom/mycompany/app/widget/WidgetSearchActivity$8;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$8$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$8$1;->f:Lcom/mycompany/app/widget/WidgetSearchActivity$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$8;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 4
    .line 5
    sget v1, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 6
    .line 7
    const-string v2, "Copied URL"

    .line 8
    .line 9
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$8$1;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v0, v2, v3}, Lcom/mycompany/app/main/MainUtil;->v(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyClipView;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
