.class Lcom/mycompany/app/main/image/MainImagePreview$54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$54;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$54;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->R0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->S0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0}, Lcom/mycompany/app/main/image/MainImagePreview;->E0(Lcom/mycompany/app/main/image/MainImagePreview;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
