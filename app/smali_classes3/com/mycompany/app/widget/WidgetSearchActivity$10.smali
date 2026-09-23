.class Lcom/mycompany/app/widget/WidgetSearchActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/widget/WidgetSearchActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$10;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$10;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyEditAuto;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->I0(Z)V

    .line 22
    .line 23
    .line 24
    return v2
.end method
