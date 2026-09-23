.class Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/events/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/RestrictedComponentContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedPublisher"
.end annotation


# instance fields
.field public final a:Lcom/google/firebase/events/Publisher;


# direct methods
.method public constructor <init>(Lcom/google/firebase/events/Publisher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;->a:Lcom/google/firebase/events/Publisher;

    .line 5
    .line 6
    return-void
.end method
