module RedmineWebhook
  class WikiWrapper
    def initialize(wiki)
      @wiki = wiki
    end

    def to_hash
      {
        :id => @wiki.id,
        :title => @wiki.title,
        :content => @wiki.content,
        :project => RedmineWebhook::ProjectWrapper.new(@wiki.project).to_hash,
      }
    end
  end
end
